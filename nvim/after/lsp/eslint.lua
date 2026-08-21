return {
  cmd = {
    "vscode-eslint-language-server",
    "--stdio",
  },

  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "astro",
  },

  root_markers = {
    "eslint.config.js",
    "eslint.config.mjs",
    "eslint.config.cjs",
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.json",
    "package.json",
    ".git",
  },
}
