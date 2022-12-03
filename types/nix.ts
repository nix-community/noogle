// {
//     "category": "./lib/customisation.nix",
//     "name": "overrideDerivation",
//     "fn_type": null,
//     "description": [
//       "`overrideDerivation drv f' takes a derivation (i.e., the result\nof a call to the builtin function `derivation') and returns a new\nderivation in which the attributes of the original are overridden\naccording to the function `f'.  The function `f' is called with\nthe original derivation attributes.",
//       "`overrideDerivation' allows certain \"ad-hoc\" customisation\nscenarios (e.g. in ~/.config/nixpkgs/config.nix).  For instance,\nif you want to \"patch\" the derivation returned by a package\nfunction in Nixpkgs to build another version than what the\nfunction itself provides, you can do something like this:",
//       "mySed = overrideDerivation pkgs.gnused (oldAttrs: {\nname = \"sed-4.2.2-pre\";\nsrc = fetchurl {\nurl = ftp://alpha.gnu.org/gnu/sed/sed-4.2.2-pre.tar.bz2;\nsha256 = \"11nq06d131y4wmf3drm0yk502d2xc6n5qy82cg88rb9nqd2lj41k\";\n};\npatches = [];\n});",
//       "For another application, see build-support/vm, where this\nfunction is used to build arbitrary derivations inside a QEMU\nvirtual machine."
//     ],
//     "example": null
//   },
export type NixType = "attrset" | "list" | "string" | "int" | "bool" | "any";
export const nixTypes: NixType[] = [
    "any",
    "attrset",
    "list",
    "string",
    "bool",
    "int",
];
  
export type DocItem = {
    category: string;
    name: string;
    fn_type?: string;
    description?: string | string[];
    example?: string | string[];
};

export type MetaData = DocItem[];


// export type FuncData = {
//     name: string;
//     info: NixFunctionMeta;
// };

// export type NixFunctionMeta = {
//     "attr-path": string;
//     "doc-url": string;
//     source: string;
//     from: NixType;
//     to: NixType;
// }

// export type NixFunctionSet = {[name:string]: NixFunctionMeta}