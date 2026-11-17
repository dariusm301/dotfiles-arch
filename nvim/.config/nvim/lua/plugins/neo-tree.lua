return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  lazy = false,
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer Sidebar" },
    { "<leader>o", "<cmd>Neotree focus<cr>", desc = "Focus Explorer Sidebar" },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      hijack_netrw_behavior = "open_default",
    },
    window = {
      position = "left",
      width = 30,
      mappings = {
        ["<space>"] = "none",
      },
    },
  },
}
