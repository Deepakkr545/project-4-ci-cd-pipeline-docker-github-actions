import js from "@eslint/js";

export default [
  js.configs.recommended, // base recommended rules

  {
    files: ["**/*.js"], // apply rules to all .js files
    rules: {
      semi: "error",       // require semicolons
      quotes: ["error", "double"], // enforce double quotes
    },
  },
];
