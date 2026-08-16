return {
  -- ============================================================
  -- Java / Spring
  -- ============================================================

  {
    "mfussenegger/nvim-jdtls",

    ft = { "java" },

    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
    },
  },

  -- ============================================================
  -- File icons
  -- ============================================================

  {
    "nvim-tree/nvim-web-devicons",

    lazy = false,

    config = function()
      require("nvim-web-devicons").setup({
        default = true,
        color_icons = true,
      })
    end,
  },

  -- ============================================================
  -- File explorer
  -- ============================================================

  {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- ============================================================
  -- Treesitter
  -- ============================================================

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
}
