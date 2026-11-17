return {
  {
    "3rd/image.nvim",
    build = false,
    opts = {
      backend = "kitty",
      processor = "magick_cli",
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = true,
      editor_only_render_when_focused = true,
      integrations = {
        markdown = { enabled = true },
      },
    },
  },

  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    lazy=false,
    dependencies = { "3rd/image.nvim" },
    build = ":UpdateRemotePlugins",
    init = function()
      vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python3")
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_auto_open_output = false
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
      vim.g.molten_virt_lines_off_by_1 = true
    end,
    keys = {
      { "<leader>mi", "<cmd>MoltenInit<CR>", desc = "Molten: init kernel" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<CR>", desc = "Molten: run line" },
      { "<leader>mv", ":<C-u>MoltenEvaluateVisual<CR>gv", mode = "v", desc = "Molten: run selection" },
      { "<leader>mr", "<cmd>MoltenReevaluateCell<CR>", desc = "Molten: re-run cell" },
      { "<leader>mo", "<cmd>noautocmd MoltenEnterOutput<CR>", desc = "Molten: enter output" },
      { "<leader>mh", "<cmd>MoltenHideOutput<CR>", desc = "Molten: hide output" },
      { "<leader>md", "<cmd>MoltenDelete<CR>", desc = "Molten: delete cell" },
    },
  },

  {
    "GCBallesteros/jupytext.nvim",
    lazy = false,
    opts = {
      style = "hydrogen",
      output_extension = "auto",
    },
  },

  {
    "GCBallesteros/NotebookNavigator.nvim",
    dependencies = {
      "echasnovski/mini.comment",
      "benlubas/molten-nvim",
    },
    event = "VeryLazy",
    opts = {
      repl_provider = "molten",
    },
    keys = {
      { "]h", function() require("notebook-navigator").move_cell("d") end, desc = "Next cell" },
      { "[h", function() require("notebook-navigator").move_cell("u") end, desc = "Previous cell" },
      { "<leader>jr", function() require("notebook-navigator").run_cell() end, desc = "Run cell" },
      { "<leader>jj", function() require("notebook-navigator").run_and_move() end, desc = "Run cell and move" },
      { "<leader>ja", function() require("notebook-navigator").add_cell_below() end, desc = "Add cell below" },
      { "<leader>jb", function() require("notebook-navigator").add_cell_above() end, desc = "Add cell above" },
      { "<leader>jR", function() require("notebook-navigator").run_all_cells() end, desc = "Run all cells" },
    },
  },
}
