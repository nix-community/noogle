const builtins = require("./data/builtins.json");
const types = require("./data/builtins.types.json");
const fs = require("fs");
const { exit } = require("process");

const DATA_PATH = process.argv.length >= 3 && process.argv[2];

if (!DATA_PATH) {
  console.error("argument OUT_PATH is not set");
  console.info("usage: node make-builtins.js <OUT_PATH>");
  exit(1);
} else {
  const info = Object.entries(builtins).map(([name, meta]) => {
    const fn_type = types[name]?.fn_type || null;
    const { args, arity, doc } = meta;
    return {
      id: `builtins.${name}`,
      category: "builtins",
      fn_type,
      name,
      description: [
        `takes ${arity} arguments: __\`${args.join("` `")}\`__ \n`,
        `${doc}\n`,
      ],
    };
  });
  fs.writeFile(`${DATA_PATH}/data.json`, JSON.stringify(info), (err) => {
    if (err) {
      console.error(err);
    }
  });
}
