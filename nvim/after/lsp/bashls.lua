---@type vim.lsp.Config
return {
  -- bash-language-server also provides useful completion/hover for the
  -- POSIX-like shell syntax used by zsh, ksh, dash, and ash scripts.
  filetypes = { "bash", "sh", "zsh" },
}
