const builtins = require("./data/builtins.json");
const names = require("./data/builtins-names.json");
const types = require("./data/builtins.types.json");
const fs = require("fs");
const { exit } = require("process");

const { derivation } = require("./data/derivation.json");

const more = require("./data/more.json");

builtins["derivation"] = derivation;

Object.entries(more).forEach((e) => {
  const [name, meta] = e;
  builtins[name] = meta;
});

const DATA_PATH = process.argv.length >= 3 && process.argv[2];

if (!DATA_PATH) {
  console.error("argument OUT_PATH is not set");
  console.info("usage: node make-builtins.js <OUT_PATH>");
  exit(1);
} else {
  let leftover = names;
  const info = Object.entries(builtins).map(([name, meta]) => {
    leftover = leftover.filter((e) => e !== name);
    const fn_type = types[name]?.fn_type || null;
    const { args, arity, doc } = meta;
    console.log(
      "arity:" +
        `${
          arity > 0
            ? `takes ${arity} arguments: __\`${args.join("` `")}\`__ \n`
            : ""
        }`
    );
    return {
      id: `builtins.${name}`,
      category: "builtins",
      fn_type,
      name,
      description: [
        `${
          arity > 0
            ? `takes ${arity} arguments: __\`${args.join("` `")}\`__ \n`
            : ""
        }`,
        `${doc}\n`,
      ],
    };
  });
  console.log({ leftover });
  fs.writeFile(`${DATA_PATH}/data.json`, JSON.stringify(info), (err) => {
    if (err) {
      console.error(err);
    }
  });
}
