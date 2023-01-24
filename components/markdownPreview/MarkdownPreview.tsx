import ReactMarkdown from "react-markdown";
import rehypeHighlight from "rehype-highlight";
import nix from "highlight.js/lib/languages/nix";

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
      }}
      rehypePlugins={[[rehypeHighlight, { languages: { nix } }]]}
    >
      {description}
    </ReactMarkdown>
  );
};
