# Architecture

## What pesto does

Pesto extracts documentation comments from Nix source files and produces structured markdown (with YAML frontmatter) for the Noogle search engine.

## Data flow

```
JSON input (positions + metadata from Nix evaluation)
  │
  ▼
pasta.rs ── deserialize JSON → Vec<Docs>
  │           each Docs has: path, lambda meta, attr meta
  ▼
bulk.rs ── orchestrates the pipeline:
  │
  ├─ 1. Group positions by .nix file
  │
  ├─ 2. For each file:
  │     position.rs ── parse .nix with rnix, build position indices
  │     comment.rs  ── extract RFC145 doc-comments (/** ... */)
  │                    by scanning backward through AST siblings
  │
  ├─ 3. fill_docs() ── populate content + countApplied into each Docs
  │
  ├─ 4. Second pass ── detect lib.makeOverridable wrappers,
  │                     replace with the actual inner lambda
  │
  └─ 5. alias.rs ── find aliases (same lambda position + isPrimop status)
                     categorized into: primop / casual / partially-applied
  │
  ▼
main.rs ── content selection per Docs, with fallback chain:
  │         1st: attr doc-comment
  │         2nd: first alias's attr doc-comment
  │         3rd: lambda doc-comment
  │
  ├─ markdown.rs ── extract type signature from "# Type" heading
  │
  └─ Output:
      ├─ DIR mode → lib/add.md (YAML frontmatter + markdown body)
      └─ JSON mode → single JSON file with all documents
```

## Struct flow

The structs below show what data enters the pipeline and what comes out.

### Input (from Nix evaluation, deserialized from JSON)

```
Docs                              -- one per Nix attribute path
├─ path: ValuePath                   ["lib", "add"]
├─ aliases: Option<AliasList>        (filled later by alias.rs)
└─ docs: DocsMeta
   ├─ attr: AttrMeta
   │  ├─ position: Option<FilePosition>   where the attribute is assigned
   │  ├─ content: Option<String>          (empty on input, filled by bulk.rs)
   │  └─ expr: Option<String>             serialized AST fragment
   └─ lambda: Option<LambdaMeta>
      ├─ isPrimop: bool
      ├─ isFunctor: Option<bool>
      ├─ name: Option<String>             primop name, e.g. "add"
      ├─ position: Option<FilePosition>   where the lambda is defined
      ├─ args: Option<Vec<String>>        parameter names
      ├─ experimental: Option<bool>
      ├─ primop_doc: Option<String>
      ├─ arity: Option<usize>
      ├─ content: Option<String>          (empty on input, filled by bulk.rs)
      ├─ countApplied: Option<usize>      (empty on input, filled by bulk.rs)
      └─ expr: Option<String>             serialized AST fragment
```

`FilePosition` is used throughout:

```
FilePosition { file: PathBuf, line: usize, column: usize }
```

### Intermediate (produced during bulk processing)

```
DocIndex                          -- built per .nix file in position.rs
├─ file: &PathBuf
├─ pos_idx: HashMap<(line, col), TextSize>     line:col → absolute offset
└─ node_idx: HashMap<TextSize, Option<SyntaxNode>>  offset → AST node

NixDocComment                     -- extracted per position in comment.rs
├─ content: Option<String>           the doc-comment text
├─ count_applied: Option<usize>      number of outer curried lambdas
└─ expr: Option<SyntaxNode>          the AST node the comment belongs to
```

After `fill_docs()`, the `content`, `countApplied`, and `expr` fields on
`LambdaMeta` / `AttrMeta` are populated from the corresponding `NixDocComment`.

### Output (written to disk)

```
Document
├─ meta: DocumentFrontmatter        → YAML frontmatter / JSON "meta"
│  ├─ title: String                     "lib.add"
│  ├─ path: &ValuePath                  ["lib", "add"]
│  ├─ aliases: Option<&AliasList>
│  ├─ signature: Option<String>         extracted from "# Type" in content
│  ├─ is_primop: Option<bool>
│  ├─ primop_meta: Option<PrimopMatter>
│  │  ├─ name, args, experimental, arity, doc
│  ├─ is_functor: Option<bool>
│  ├─ attr_position: Option<&FilePosition>
│  ├─ attr_expr: Option<&String>
│  ├─ lambda_position: Option<&FilePosition>
│  ├─ lambda_expr: Option<&String>
│  ├─ count_applied: Option<usize>
│  └─ content_meta: Option<SourceOrigin>
└─ content: Option<ContentSource>    → markdown body / JSON "content"
   ├─ content: Option<String>           the actual doc text
   └─ source: Option<SourceOrigin>
      ├─ position: Option<&FilePosition>
      ├─ path: Option<&ValuePath>
      └─ pos_type: Option<PositionType>   Attribute | Lambda
```

### Transformation summary

```
Vec<Docs>  ──bulk.rs──→  Vec<Docs>       (content/countApplied filled)
                           + HashMap<ValuePath, AliasList>
                           + HashMap<ValuePath, Docs>      (doc_map)
                                │
                          main.rs: for each Docs
                                │
                                ▼
                           Document       (frontmatter + selected content)
                                │
                                ▼
                      .md files or .json
```

## Key files

| File | Role |
|---|---|
| `main.rs` | CLI (clap), content selection, output formatting |
| `pasta.rs` | Core data types (`Docs`, `LambdaMeta`, `AttrMeta`), JSON I/O |
| `bulk.rs` | Batch pipeline: file grouping → comment extraction → alias detection |
| `position.rs` | Bidirectional index mapping `(line,col)` ↔ AST nodes via rnix |
| `comment.rs` | RFC145 `/** */` doc-comment extraction from syntax tree |
| `alias.rs` | Groups functions that share the same lambda position |
| `markdown.rs` | Extracts type signatures from markdown content using comrak |

## Content selection logic

The `lambda_content()` method only returns docs when `countApplied == 0` (or `None` for primops, or `1` for functors) — this avoids inheriting incorrect docs from partially-applied wrappers. The fallback chain (attr → alias → lambda) ensures the most specific doc-comment wins.

## Output formats

**DIR mode** produces a directory tree of markdown files with YAML frontmatter:

```
out/
├── lib/
│   ├── add.md
│   └── attrByPath.md
└── builtins/
    └── add.md
```

**JSON mode** produces a single JSON file containing all documents with their metadata and content.
