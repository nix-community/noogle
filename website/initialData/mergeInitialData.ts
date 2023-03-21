import { MetaData } from "../models/nix";

export function mergeInitialData(data: MetaData, markdownData: MetaData){
    // Merge additional metainformation into existing function meta
    const head = data.map((item) => {
        const more = markdownData.find((i) => i.id === item.id);
        const newItem = { ...item };
        if (more) {
        newItem.description =
            newItem.description + `\n\n --- \n # Nooglers: \n` + more.description;
        newItem.category = more.category || item.category;
        newItem.name = more.name || item.name;
        newItem.fn_type = more.fn_type || item.fn_type;
        newItem.category = more.category || item.category;
        newItem.example = more.example || item.example;
        }
        return newItem;
    });
    // append docs for non-existing function meta
    const tail = markdownData.filter(
        (item) => !data.find((i) => i.id === item.id)
    );
    return [...head, ...tail]
}