import nix from "highlight.js/lib/languages/nix";
import ReactMarkdown from "react-markdown";
import rehypeHighlight from "rehype-highlight";

interface MarkdownPreviewProps {
  description: string;
}
export const MarkdownPreview = (props: MarkdownPreviewProps) => {
  const { description } = props;
  return (
    <ReactMarkdown
      components={{
        h1: "h3",
        h2: "h4",
        h3: "h5",
        h4: "h6",
        h5: "h6",
        h6: "h6",
      }}
      rehypePlugins={[[rehypeHighlight, { languages: { nix } }]]}
    >
      {description}
    </ReactMarkdown>
  );
};
