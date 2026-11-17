vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
  if vim.v.shell_error ~= 0 then
    error("Failed to clone lazy.nvim:\n" .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  change_detection = { notify = false },
})

vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#2c353f", bg = "NONE" })

-- venv 
local venv_paths = { ".venv", "venv" }
for _, dir in ipairs(venv_paths) do
  local full_path = vim.fn.getcwd() .. "/" .. dir
  if vim.fn.isdirectory(full_path) == 1 then
    vim.env.VIRTUAL_ENV = full_path
    vim.env.PATH = full_path .. "/bin:" .. vim.env.PATH
    break
  end
end
