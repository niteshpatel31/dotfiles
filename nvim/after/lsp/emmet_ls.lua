return {
  cmd = {
    "emmet-language-server",
    "--stdio",
  },

  filetypes = {
    "html",
    "css",
    "scss",
    "javascriptreact",
    "typescriptreact",
  },

  -- Offer abbreviation completions as soon as a keyword is typed, rather
  -- than requiring an explicit completion request after `<`.
  init_options = {
    showAbbreviationSuggestions = true,
  },

  root_markers = {
    "package.json",
    ".git",
  },
}
