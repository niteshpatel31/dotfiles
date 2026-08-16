local api = require("nvim-tree.api")

require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },

  renderer = {
    group_empty = true,

    indent_markers = {
      enable = true,
    },

    icons = {
      webdev_colors = true,

      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
        diagnostics = true,
        bookmarks = true,
      },
    },
  },

  git = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },

  diagnostics = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },

  update_focused_file = {
    enable = true,
    update_root = false,
  },
})

vim.keymap.set("n", "<Space>s", api.tree.toggle, {
  silent = true,
  desc = "Toggle nvim-tree",
})

vim.keymap.set("n", "<Space>e", api.tree.focus, {
  silent = true,
  desc = "Focus nvim-tree",
})
