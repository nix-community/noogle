import fs from "fs";
import matter from "gray-matter";
import { DocItem, MetaData } from "../models/nix";

export const getMarkdownData = () => {
    const path = "./user-docs";
    const files = fs.readdirSync(path);
    const markdownData: MetaData = files
    .map((file) => {
        const rawContent = fs.readFileSync(`${path}/${file}`, "utf-8");
        type DocMatter = {
            content: string;
            data: {
                id?: string;
                name?: string;
                category?: string;
                example?: string;
                fn_type?: string;
            };
        };
        const { data, content }: DocMatter = matter(rawContent);
        if (data.id && typeof data.id === "string") {
            const entry: DocItem = {
                id: data.id,
                
                name: data.name || data.id,
                category: data.category || data.id,
                example: data.example,
                fn_type: data.fn_type,
                
                description: content,
            };
            return entry;
        }
    })
    .filter(Boolean) as MetaData;
    return markdownData;
}