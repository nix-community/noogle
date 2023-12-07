import { Group, getMdxMeta } from "@/utils";
import { ListItem, ListItemText } from "@mui/material";
import Link from "next/link";
import { CollapseWrapper } from "./ListCollapse";
import { ListEntry } from "./ListEntry";

interface ListGroupProps {
  grp: Group;
  position: number;
}
export const ListGroup = async (props: ListGroupProps) => {
  const { grp, position } = props;
  const sorted = Object.entries(grp).sort(([, v], [,]) =>
    Array.isArray(v) ? 1 : -1
  );

  return sorted.map(async ([name, entry], idx) => {
    if (Array.isArray(entry)) {
      const matter = await getMdxMeta(entry);
      return (
        <Link key={`${idx}`} href={`/ref/${entry.join("/")}`}>
          <ListItem
            disablePadding
            disableGutters
            sx={{
              ml: 2,
              pl: 2,
              borderInlineStartStyle: "solid",
              borderInlineStartWidth: "1px",
              borderInlineStartColor: "#e4e4e7",
            }}
          >
            <ListEntry currentPath={`/ref/${entry.join("/")}`}>
              <ListItemText primary={matter.compiled.frontmatter.title} />
            </ListEntry>
          </ListItem>
        </Link>
      );
    } else {
      return (
        <CollapseWrapper key={idx} name={name} position={position}>
          <ListGroup grp={entry} position={position + 1} />
        </CollapseWrapper>
      );
    }
  });
};
