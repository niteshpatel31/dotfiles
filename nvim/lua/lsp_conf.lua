local utils = require("utils")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_buf_conf", { clear = true }),
  callback = function(event_context)
    local client = vim.lsp.get_client_by_id(event_context.data.client_id)
    -- vim.print(client.name, client.server_capabilities)

    if not client then
      return
    end

    local bufnr = event_context.buf

    -- Mappings.
    local map = function(mode, l, r, opts)
      opts = opts or {}
      opts.silent = true
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Use Glance for every LSP-backed language, including Java.  It delegates
    -- to the attached client(s), so it works with language-specific servers
    -- without per-server mappings.
    map("n", "gd", "<cmd>Glance definitions<cr>", { desc = "glance definitions" })
    map("n", "<C-]>", "<cmd>Glance definitions<cr>", { desc = "glance definitions" })
    map("n", "K", function()
      vim.lsp.buf.hover {
        border = "single",
        max_height = 20,
        max_width = 130,
        close_events = { "CursorMoved", "BufLeave", "WinLeave", "LSPDetach" },
      }
    end)
    map("n", "<C-k>", vim.lsp.buf.signature_help)
    map("n", "<space>rn", vim.lsp.buf.rename, { desc = "varialbe rename" })
    map("n", "<space>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
    map("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { desc = "add workspace folder" })
    map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, { desc = "remove workspace folder" })
    map("n", "<space>wl", function()
      vim.print(vim.lsp.buf.list_workspace_folders())
    end, { desc = "list workspace folder" })

    -- Set some key bindings conditional on server capabilities
    -- Disable ruff hover feature in favor of Pyright
    if client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end

    -- Uncomment code below to enable inlay hint from language server, some LSP server supports inlay hint,
    -- but disable this feature by default, so you may need to enable inlay hint in the LSP server config.
    -- vim.lsp.inlay_hint.enable(true, {buffer=bufnr})
  end,
  nested = true,
  desc = "Configure buffer keymap and behavior based on LSP",
})

-- Enable lsp servers when they are available

local capabilities = require("lsp_utils").get_default_capabilities()

-- `*` will set default config for all lsp
vim.lsp.config("*", {
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 500,
  },
})

-- JDTLS returns JDK and dependency definitions as `jdt://` virtual files.
-- nvim-jdtls supplies the BufReadCmd handler that fetches their source (or a
-- decompiled view); this capability asks JDTLS to provide those contents.
vim.lsp.config("jdtls", {
  init_options = {
    extendedClientCapabilities = {
      classFileContentsSupport = true,
    },
  },
})

-- A mapping from lsp server name to the executable name
local enabled_lsp_servers = {
  pyright = "pyright-langserver",
  ruff = "ruff",
  lua_ls = "lua-language-server",
  -- ltex = "ltex-ls",
  clangd = "clangd",
  jdtls = "jdtls",
  kotlin_language_server = "kotlin-language-server",
  vimls = "vim-language-server",
  bashls = "bash-language-server",
  fish_lsp = "fish-lsp",
  yamlls = "yaml-language-server",
  gopls = "gopls",
  ts_ls = "typescript-language-server",
  html = "vscode-html-language-server",
  emmet_ls = "emmet-language-server",
  cssls = "vscode-css-language-server",
  astro = "astro-ls",
  eslint = "vscode-eslint-language-server",
  -- the server can be install via homebrew: brew install golangci-lint-langserver
  -- golangci-lint also needs to be installed: https://github.com/golangci/golangci-lint
  -- golangci_lint_ls = "golangci-lint-langserver",

  -- to install codebook, run `brew install codebook-lsp`
  -- codebook = "codebook-lsp"
}

for server_name, lsp_executable in pairs(enabled_lsp_servers) do
  if utils.executable(lsp_executable) then
    vim.lsp.enable(server_name)
  else
    local msg = string.format(
      "Executable '%s' for server '%s' not found! Server will not be enabled",
      lsp_executable,
      server_name
    )
    vim.notify(msg, vim.log.levels.WARN, { title = "Nvim-config" })
  end
end

-- LSP related command

vim.api.nvim_create_user_command("LspInfo", "checkhealth vim.lsp", {
  desc = "Show LSP Info",
})

vim.api.nvim_create_user_command("LspLog", function(_)
  local log_path = vim.lsp.log.get_filename()

  vim.cmd(string.format("edit %s", log_path))
end, {
  desc = "Show LSP log",
})

vim.api.nvim_create_user_command("LspRestart", "lsp restart", {
  desc = "Restart LSP",
})

--- show LSP progress (works on Ghostty)
vim.api.nvim_create_autocmd("LspProgress", {
  callback = function(ev)
    local value = ev.data.params.value
    vim.api.nvim_echo({ { value.message or "done" } }, false, {
      id = "lsp." .. ev.data.client_id,
      kind = "progress",
      source = "vim.lsp",
      title = value.title,
      status = value.kind ~= "end" and "running" or "success",
      percent = value.percentage,
    })
  end,
})
