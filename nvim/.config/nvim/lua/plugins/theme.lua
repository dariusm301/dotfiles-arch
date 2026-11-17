return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = false },
      sidebars = "transparent",
      floats = "dark",
    },
    dim_inactive = false,
    on_highlights = function(hl, c)
      hl.FloatBorder = { fg = c.teal, bg = c.bg_float }
      hl.WinSeparator = { fg = c.teal }
      hl.CursorLineNr = { fg = c.teal, bold = true }
      hl.LineNr = { fg = c.dark3 }
      hl.CursorLine = { bg = "#1a2b3c" }
      hl.Visual = { bg = "#264f5c" }
      hl.Search = { bg = c.teal, fg = c.bg }
      hl.IncSearch = { bg = c.green1, fg = c.bg }
      hl.MatchParen = { fg = c.teal, bold = true, underline = true }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
