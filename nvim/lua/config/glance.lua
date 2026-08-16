local glance = require("glance")
local glance_lsp = require("glance.lsp")

-- Glance does not define this standard LSP request itself.  Java's jdtls
-- supports it, so make declarations available to the Glance command and API.
glance_lsp.methods.declarations = {
  label = "declarations",
  lsp_method = "textDocument/declaration",
}

glance.setup {
  height = 25,
  border = {
    enable = true,
  },
}

vim.keymap.set("n", "<space>gd", "<cmd>Glance definitions<cr>")
vim.keymap.set("n", "<space>gr", "<cmd>Glance references<cr>")
vim.keymap.set("n", "<space>gi", "<cmd>Glance implementations<cr>")
