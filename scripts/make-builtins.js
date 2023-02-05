const builtins = require("./data/builtins.json");
const types = require("./data/builtins.types.json");
const derivation = require("./data/derivation.json");
builtins["derivation"] = derivation.derivation;

const fs = require("fs");
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
fs.writeFile("./models/data/builtins.json", JSON.stringify(info), (err) => {
  if (err) {
    console.error(err);
  }
});
