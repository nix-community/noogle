import { DocItem, MetaData } from "@/models/nix";

export const byQuery =
  (rawTerm: string) =>
  (data: MetaData): MetaData => {
    const term = rawTerm.toLowerCase();
    return data
      .reduce(
        (results: (DocItem & { relevance: number })[], docItem: DocItem) => {
          const matchesOn = Object.keys(docItem).filter((key) => {
            const rawValue = String(docItem[key as keyof DocItem]);
            if (rawValue === null || rawValue === undefined) {
              return false;
            }
            const value = Array.isArray(rawValue)
              ? rawValue.join("\n").toLowerCase()
              : rawValue.toLowerCase();
            if (value.includes(term)) {
              return true;
            }
            return false;
          });
          if (matchesOn?.length) {
            results.push({
              ...docItem,
              relevance: getRelevance(matchesOn as (keyof DocItem)[]),
            });
          }
          return results;
        },
        []
      )
      .sort((a, b) => b.relevance - a.relevance);
  };

const getRelevance = (matchesOn: (keyof DocItem)[]): number => {
  const relevanceMap = {
    id: 10,
    name: 5,
    fn_type: 4,
    category: 3,
    example: 2,
    description: 1,
    line: 1,
  };
  return matchesOn.reduce((count, key) => {
    return count + relevanceMap[key];
  }, 0);
};
