import {
  Box,
  Container,
  Link,
  List,
  ListItem,
  ListItemIcon,
  ListItemSecondaryAction,
  ListItemText,
  Typography,
} from "@mui/material";
import Highlight from "react-highlight";
import LocalLibraryIcon from "@mui/icons-material/LocalLibrary";
import InputIcon from "@mui/icons-material/Input";
import { DocItem } from "../../types/nix";
import CodeIcon from "@mui/icons-material/Code";
import ReactMarkdown from "react-markdown";

// import hljs from "highlight.js";

// needed for nextjs to import the classes of github theme
import "highlight.js/styles/github.css";
interface PreviewProps {
  docItem: DocItem;
}

export const Preview = (props: PreviewProps) => {
  const { docItem } = props;
  const { name, description, category, example, fn_type } = docItem;

  const getGeneratedExamples = () => {
    if (description) {
      // const regex = /\`\`\`.*\`\`\`/gm;
      const regex = /(```.+?```)/gms;
      console.log({ description, regex });
      if (typeof description === "object") {
        return description
          .join(" ")
          .match(regex)
          ?.join("")
          ?.replace("```nix", "")
          ?.replace("```", "");
      } else {
        return description
          .match(regex)
          ?.join("")
          ?.replace("```nix", "")
          ?.replace("```", "");
      }
    }
  };

  const finalExample = example || getGeneratedExamples();
  console.log({ finalExample });
  const prefix = category.split(/([\/.])/gm).at(4) || "builtins";
  const libName = category
    .match(/(?:[a-zA-Z]*)\.nix/gm)?.[0]
    ?.replace(".nix", "");
  const docsRef = `https://nixos.org/manual/nixpkgs/stable/#function-library-lib.${libName}.${name}`;
  return (
    <Box
      sx={{
        p: 1,
        pt: 2,
        mt: 2,
        mb: -2,
        width: "100%",
        borderTop: "solid 1px",
        borderTopColor: "primary.main",
      }}
    >
      <Typography variant="h2">{`${prefix}.${name}`}</Typography>
      <List sx={{ width: "100%" }}>
        <ListItem>
          <ListItemIcon>
            <LocalLibraryIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
            }}
            primary={"nixpkgs/" + category.replace("./", "")}
            secondary={
              <Container
                sx={{ ml: "0 !important", pl: "0 !important" }}
                maxWidth="lg"
              >
                {typeof description === "object"
                  ? description.map((d, idx) => (
                      <ReactMarkdown key={idx}>{d}</ReactMarkdown>
                    ))
                  : description && <ReactMarkdown>{description}</ReactMarkdown>}
              </Container>
            }
          />
          {/* <ListItemSecondaryAction>
            <Link href={docsRef}>View Docs</Link>
          </ListItemSecondaryAction> */}
        </ListItem>
        <ListItem>
          <ListItemIcon>
            <InputIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            primaryTypographyProps={{
              color: "text.secondary",
              fontSize: 14,
            }}
            secondaryTypographyProps={{
              color: "text.primary",
              fontSize: "1rem",
            }}
            secondary={fn_type || "no type yet provided"}
            primary="function signature "
          />
        </ListItem>
        <ListItem
          sx={{
            backgroundColor: "background.paper",
          }}
        >
          <ListItemIcon>
            <CodeIcon />
          </ListItemIcon>
          <ListItemText
            sx={{
              overflow: "hidden",
              textOverflow: "ellipsis",
            }}
            disableTypography
            primary={
              finalExample && (
                <Typography sx={{ color: "text.secondary" }}>
                  Example
                </Typography>
              )
            }
            secondary={
              finalExample ? (
                <Box sx={{ mt: -2, pl: 1.5 }}>
                  <Highlight className="nix">{finalExample}</Highlight>
                </Box>
              ) : (
                <Typography
                  sx={{ color: "text.secondary" }}
                >{`no example yet provided`}</Typography>
              )
            }
          />
        </ListItem>
      </List>
    </Box>
  );
};
