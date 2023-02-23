// simple script
const data = require("./test.json");
const fs = require("fs");

const all_docs = data.reduce(
  (acc, doc) => `${acc}
## ${doc.name}

### Description

\`\`\`nix
${doc.description}
\`\`\`

### Example

\`\`\`nix
${doc.example}
\`\`\`

### Type

\`\`\`nix
${doc.fn_type}
\`\`\`

`,
  ""
);

fs.writeFile("content.md", `# Functions\n${all_docs}`, (err) => {
  if (err) {
    console.error(err);
  }
});
