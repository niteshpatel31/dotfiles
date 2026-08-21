local nvim_treesitter = require("nvim-treesitter")

local ensure_installed = {
  -- Systems
  "c",
  "cpp",
  "go",
  "gomod",
  "gosum",
  "rust",

  -- MERN / Web
  "javascript",
  "typescript",
  "tsx",
  "astro",
  "html",
  "css",
  "scss",
  "json",

  -- Java / Spring
  "java",

  -- Python / scripting
  "python",
  "bash",
  "sh",
  "lua",

  -- Configuration
  "toml",
  "yaml",

  -- Documentation
  "markdown",
  "vim",
  "vimdoc",

  -- Misc
  "diff",
  "zsh",
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = ensure_installed,

  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    local lang = vim.treesitter.language.get_lang(ft)

    if lang == nil then
      return
    end

    -- Install parser if it does not exist.
    if not vim.treesitter.language.add(lang) then
      local available_langs = vim.g.ts_available
        or nvim_treesitter.get_available()

      vim.g.ts_available = available_langs

      if vim.tbl_contains(available_langs, lang) then
        vim.notify(
          "Installing Treesitter parser: " .. lang,
          vim.log.levels.INFO
        )

        nvim_treesitter.install(lang)
      end
    end

    -- Start Treesitter.
    if vim.treesitter.language.add(lang) then
      vim.treesitter.start(args.buf, lang)
    end
  end,
})

-- Treesitter textobjects
require("nvim-treesitter-textobjects").setup({
  select = {
    lookahead = true,

    selection_modes = {
      ["@function.inner"] = "V",
      ["@function.outer"] = "V",
      ["@class.inner"] = "V",
      ["@class.outer"] = "V",
      ["@parameter.outer"] = "v",
    },

    include_surrounding_whitespace = false,
  },
})

-- Textobject keymaps
vim.keymap.set({ "x", "o" }, "af", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@function.outer", "textobjects")
end)

vim.keymap.set({ "x", "o" }, "if", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@function.inner", "textobjects")
end)

vim.keymap.set({ "x", "o" }, "ac", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@class.outer", "textobjects")
end)

vim.keymap.set({ "x", "o" }, "ic", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@class.inner", "textobjects")
end)

vim.keymap.set({ "x", "o" }, "as", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@local.scope", "locals")
end)
