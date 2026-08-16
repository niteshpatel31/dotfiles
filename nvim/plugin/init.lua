return {
    {
  "stevearc/conform.nvim",

  event = { "BufWritePre" },

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },

      -- You can add these later
      cpp = { "clang_format" },
      c = { "clang_format" },

      python = { "ruff_format" },

      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },

      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
    },

    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          async = true,
          lsp_format = "fallback",
        })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
