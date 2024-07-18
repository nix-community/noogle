"use client";

import { EmptyRecordsPlaceholder } from "@/components/emptyRecordsPlaceholder";
import { useFilter } from "@/components/layout/filterContext";
import Clear from "@mui/icons-material/Clear";
import {
  Box,
  Button,
  Chip,
  Collapse,
  Container,
  Divider,
  Icon,
  IconButton,
  LinearProgress,
  List,
  ListItem,
  ListItemText,
  Typography,
} from "@mui/material";
import Link from "next/link";
import { useSearchParams } from "next/navigation";
import React, { useEffect, useState } from "react";
import LinkIcon from "@mui/icons-material/Link";
import CodeIcon from "@mui/icons-material/Code";

import { ExpandLess, ExpandMore, GitHub, Mail } from "@mui/icons-material";

const getPayload = (term: string) => {
  const extraWildcards = term.split(" ").map((t) => ({
    wildcard: {
      package_attr_name: {
        value: `*${t}*`,
        case_insensitive: true,
      },
    },
  }));
  return {
    from: 0,
    size: 100,
    sort: [
      { _score: "desc", package_attr_name: "desc", package_pversion: "desc" },
    ],
    aggs: {
      package_attr_set: { terms: { field: "package_attr_set", size: 20 } },
      package_license_set: {
        terms: { field: "package_license_set", size: 20 },
      },
      package_maintainers_set: {
        terms: { field: "package_maintainers_set", size: 20 },
      },
      package_platforms: { terms: { field: "package_platforms", size: 20 } },
      all: {
        global: {},
        aggregations: {
          package_attr_set: { terms: { field: "package_attr_set", size: 20 } },
          package_license_set: {
            terms: { field: "package_license_set", size: 20 },
          },
          package_maintainers_set: {
            terms: { field: "package_maintainers_set", size: 20 },
          },
          package_platforms: {
            terms: { field: "package_platforms", size: 20 },
          },
        },
      },
    },
    query: {
      bool: {
        filter: [
          { term: { type: { value: "package", _name: "filter_packages" } } },
          {
            bool: {
              must: [
                { bool: { should: [] } },
                { bool: { should: [] } },
                { bool: { should: [] } },
                { bool: { should: [] } },
              ],
            },
          },
        ],

        must: [
          {
            dis_max: {
              tie_breaker: 0.7,
              queries: [
                // Pull exact matches to the top
                {
                  term: {
                    package_attr_name: {
                      value: term,
                      boost: 100,
                    },
                  },
                },
                {
                  term: {
                    package_attr_pname: {
                      value: term,
                      boost: 100,
                    },
                  },
                },
                {
                  term: {
                    package_programs: {
                      value: term,
                      boost: 10,
                    },
                  },
                },
                // Multimatch Query
                {
                  multi_match: {
                    type: "cross_fields",
                    query: term,
                    analyzer: "whitespace",
                    auto_generate_synonyms_phrase_query: false,
                    operator: "and",
                    _name: `multi_match_${term}`,
                    fields: [
                      "package_attr_name^9",
                      "package_attr_name.*^5.3999999999999995",
                      "package_programs^9",
                      "package_programs.*^5.3999999999999995",
                      "package_pname^6",
                      "package_pname.*^3.5999999999999996",
                      "package_description^1.3",
                      "package_description.*^0.78",
                      "package_longDescription^1",
                      "package_longDescription.*^0.6",
                      "flake_name^0.5",
                      "flake_name.*^0.3",
                    ],
                  },
                },
                // Wildcard Query
                {
                  wildcard: {
                    package_attr_name: {
                      value: `*${term}*`,
                      case_insensitive: true,
                    },
                  },
                },
                // Fuzzy Query
                ...extraWildcards,
              ],
            },
          },
        ],
      },
    },
  };
};

type Result = {
  took: 99;
  timed_out: false;
  _shards: {
    total: 1;
    successful: 1;
    skipped: 0;
    failed: 0;
  };
  hits: {
    total: {
      value: 52;
      relation: "eq";
    };
    max_score: null;
    hits: Hit[];
  };
};

type Hit = {
  _index: string;
  _type: string;
  _id: string;
  _score: number;
  _source: {
    type: string;
    package_attr_name: string;
    package_attr_set: string;
    package_pname: string;
    package_pversion: string;
    package_platforms: string[];
    package_outputs: string[];
    package_default_output: string;
    package_programs: string[];
    package_license: {
      url: string;
      fullName: string;
    }[];
    package_license_set: string[];
    package_maintainers: {
      name: string;
      github: string;
      email: string;
    }[];
    package_maintainers_set: string[];
    package_description: string;
    package_longDescription: string;
    package_hydra: string;
    package_system: string;
    package_homepage: string[];
    package_position: string;
  };
  sort: (number | string)[];
  matched_queries: string[];
};

type PackageItemProps = {
  item: Hit;
  selected: boolean;
  setSelected: (id: string) => void;
};
const PackageItem = (props: PackageItemProps) => {
  const { item, selected, setSelected } = props;

  const { _source: meta } = item;

  console.log({ meta, item });
  return (
    <>
      <ListItem
        sx={{ px: 1, py: 2, bgcolor: "background.paper", my: 1 }}
        aria-label={`item-${item._source.package_pname}`}
      >
        <Box
          sx={{
            display: "flex",
            flexDirection: "column",
            gap: 2,
            width: "100%",
          }}
        >
          <ListItemText
            primaryTypographyProps={{
              variant: "h5",
              component: "h2",
            }}
            secondaryTypographyProps={{
              component: "div",
              variant: "body1",
              color: "text.secondary",
            }}
            primary={
              <Link
                href={"#"}
                onClick={() => {
                  setSelected(item._id);
                }}
              >
                {meta.package_attr_name}
              </Link>
            }
            secondary={
              <Box
                sx={{ maxWidth: "sm" }}
                dangerouslySetInnerHTML={{
                  __html: meta.package_description,
                }}
              />
            }
          />
          <Box
            sx={{
              display: "flex",
              flexDirection: "row",
              flexWrap: "wrap",
            }}
          >
            <ListItemText
              sx={{
                display: "flex",
                flexDirection: "column-reverse",
              }}
              secondary={"name"}
              primary={meta.package_pname}
            />
            <ListItemText
              sx={{
                display: "flex",
                flexDirection: "column-reverse",
              }}
              secondary={"version"}
              primary={meta.package_pversion}
            />
            <ListItemText
              sx={{
                display: "flex",
                flexDirection: "column-reverse",
              }}
              secondary="outputs"
              primary={
                <div
                  style={{
                    display: "flex",
                    flexDirection: "row",
                    gap: "0.5rem",
                  }}
                >
                  {meta.package_outputs.map((output) => (
                    <code key={output}>{output}</code>
                  ))}
                </div>
              }
            />
          </Box>
          <Box
            sx={{
              display: "flex",
              flexDirection: "row",
              flexWrap: "wrap",
            }}
          >
            <ListItemText
              sx={{
                display: "flex",
                flexDirection: "column-reverse",
              }}
              secondary={"license"}
              primary={
                meta.package_license?.length !== 0 && (
                  <Link href={meta.package_license[0].url || "#"}>
                    {meta.package_license[0].fullName}
                  </Link>
                )
              }
            />
            <Button
              sx={{
                ml: "auto",
              }}
              component={Link}
              href={meta.package_homepage?.[0] || "#"}
              startIcon={<LinkIcon fontSize="inherit" />}
            >
              Homepage
            </Button>
            <Button
              component={Link}
              href={`https://github.com/NixOS/nixpkgs/blob/nixos-unstable/${meta.package_position.replace(
                ":",
                "#L"
              )}`}
              startIcon={<CodeIcon fontSize="inherit" />}
            >
              Source
            </Button>
          </Box>

          <Box
            sx={{
              display: "flex",
              justifyContent: "center",
              mt: "-1rem",
            }}
          >
            <IconButton onClick={() => setSelected(item._id)}>
              {selected ? <ExpandLess /> : <ExpandMore />}
            </IconButton>
          </Box>

          <Collapse in={selected}>
            <Divider flexItem orientation="horizontal" />
            {/* <Box
              sx={{
                display: "flex",
                justifyContent: "center",
              }}
            >
              <IconButton onClick={() => setSelected(item._id)}>
                <ExpandLess />
              </IconButton>
            </Box> */}
            <Box
              sx={{
                display: "flex",
                flexDirection: "column",
                gap: 2,
                width: "100%",
              }}
            >
              <ListItemText
                primaryTypographyProps={{
                  component: "div",
                  variant: "body1",
                  color: "text.primary",
                }}
                // secondaryTypographyProps={{
                // }}
                primary={
                  <Box
                    sx={{ width: "100%" }}
                    dangerouslySetInnerHTML={{
                      __html: meta.package_longDescription,
                    }}
                  />
                }
                // secondary={
                //   ""
                // }
              />
              <ListItemText
                sx={{
                  display: "flex",
                  flexDirection: "column-reverse",
                }}
                secondary="programs"
                primary={
                  <Box
                    sx={{
                      display: "flex",
                      flexDirection: "row",
                      gap: "0.5rem",
                      color: "primary.main",
                    }}
                  >
                    {meta.package_programs.map((output) => (
                      <code key={output}>{output}</code>
                    ))}
                  </Box>
                }
              />
              <ListItemText
                sx={{
                  display: "flex",
                  flexDirection: "column-reverse",
                }}
                secondary="Platforms"
                primary={
                  <Box
                    sx={{
                      display: "flex",
                      flexWrap: "wrap",
                      flexDirection: "row",
                      gap: "0.5rem",
                      color: "primary.main",
                    }}
                  >
                    {meta.package_platforms.map((output) => (
                      <code key={output}>{output}</code>
                    ))}
                  </Box>
                }
              />
              <ListItemText
                sx={{
                  display: "flex",
                  flexDirection: "column-reverse",
                }}
                secondary="Maintainers"
                primary={
                  <Box
                    sx={{
                      display: "flex",
                      flexDirection: "column",
                      gap: "0.5rem",
                      color: "primary.main",
                    }}
                  >
                    {meta.package_maintainers.map((maintainer) => (
                      <Box
                        key={maintainer.github}
                        sx={{
                          display: "flex",
                          flexDirection: "row",
                          gap: "0.5rem",
                        }}
                      >
                        <Link href={`https://github.com/${maintainer.github}`}>
                          <Icon fontSize="inherit">
                            <GitHub fontSize="inherit" />
                          </Icon>
                          {maintainer.name}
                        </Link>
                        <Box component={"span"} sx={{ color: "text.primary" }}>
                          via
                        </Box>
                        <Link href={`mailto:${maintainer.email}`}>
                          <Icon fontSize="inherit">
                            <Mail fontSize="inherit" />
                          </Icon>
                          {maintainer.email}
                        </Link>
                      </Box>
                    ))}
                  </Box>
                }
              />
            </Box>
          </Collapse>
        </Box>
      </ListItem>
    </>
  );
};

import AppsIcon from "@mui/icons-material/Apps";

export default function Page() {
  const query = useSearchParams();
  const term = query.get("term");

  const [_results, setResults] = useState<Result>();
  const [items, setItems] = useState<Hit[]>();
  const [loading, setLoading] = useState<boolean>(false);

  const [selected, setSelected] = useState<string | null>(null);

  useEffect(() => {
    if (term) {
      setLoading(true);
      fetch(
        `https://search.nixos.org/backend/latest-42-nixos-unstable/_search`,
        {
          method: "POST",
          body: JSON.stringify(getPayload(term)),
          headers: {
            "Content-Type": "application/json",
            Authorization:
              "Basic YVdWU0FMWHBadjpYOGdQSG56TDUyd0ZFZWt1eHNmUTljU2g=",
          },
        }
      )
        .then((res) => res.json())
        .then((data) => {
          setResults(data);
          setItems(data.hits.hits);
        })
        .catch((err) => console.error(err))
        .finally(() => setLoading(false));
    }
  }, [term]);

  const { setTerm, submit } = useFilter();
  const handleReset = (target: "term") => {
    if (target === "term") {
      setTerm("");
      submit({ input: "" });
    }
  };
  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
        width: "100%",
      }}
    >
      <Container maxWidth="lg" sx={{ mt: 2 }}>
        {loading ? (
          <LinearProgress sx={{ my: 2 }} />
        ) : !term ? (
          <Box
            sx={{
              display: "flex",
              flexDirection: "column",
              mt: "3.7rem",
              justifySelf: "center",
              width: "100%",
              px: 2,
              mx: 1,
            }}
          >
            <EmptyRecordsPlaceholder
              CardProps={{
                sx: { backgroundColor: "inherit" },
              }}
              title="Type something to search"
              icon={<AppsIcon fontSize="inherit" />}
            />
            <Box sx={{ marginLeft: "auto" }}>
              <Link rel="canonical" href="/">
                Or search functions
              </Link>
            </Box>
          </Box>
        ) : (
          <>
            <Box
              sx={{
                display: "flex",
              }}
            >
              <Typography
                component="span"
                variant="subtitle1"
                sx={{
                  p: 1,
                  textTransform: "capitalize",
                }}
              >
                <Chip
                  label={`${items?.length || "0"} Results`}
                  color="primary"
                  sx={{ color: "primary.contrastText" }}
                />
              </Typography>
              <Typography
                component="span"
                variant="subtitle1"
                sx={{
                  marginLeft: "auto",
                  order: 1,
                  p: 1,
                  textTransform: "capitalize",
                }}
              >
                <Chip
                  label={`Channel: nixos-unstable`}
                  color="primary"
                  sx={{ color: "primary.contrastText" }}
                />
              </Typography>
              {term && (
                <Typography
                  component="span"
                  variant="subtitle1"
                  sx={{
                    p: 1,
                    textTransform: "none",
                  }}
                >
                  <Chip
                    label={
                      <>
                        {`${term}`}
                        <IconButton
                          size="small"
                          onClick={() => handleReset("term")}
                          aria-label="clear term"
                        >
                          <Clear fontSize="inherit" />
                        </IconButton>
                      </>
                    }
                    color="secondary"
                    sx={{ color: "secondary.contrastText" }}
                  />
                </Typography>
              )}
            </Box>
            <List aria-label="basic-list" sx={{ pt: 1, width: "100%" }}>
              {items?.length ? (
                items.map((item, idx) => (
                  <React.Fragment key={`${idx}`}>
                    <PackageItem
                      item={item}
                      selected={item._id === selected}
                      setSelected={(id) => {
                        if (id === selected) {
                          setSelected(null);
                        } else {
                          setSelected(id);
                        }
                      }}
                    />
                  </React.Fragment>
                ))
              ) : (
                <Box component="li" sx={{ mt: 3 }}>
                  <EmptyRecordsPlaceholder
                    CardProps={{
                      sx: { backgroundColor: "inherit" },
                    }}
                    title={"No package found"}
                    subtitle={"Maybe the package does not exist"}
                  />
                </Box>
              )}
            </List>
          </>
        )}
      </Container>
    </Box>
  );
}
