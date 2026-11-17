local opt = vim.opt

opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.showmode = false
opt.laststatus = 3
opt.cmdheight = 1
opt.pumheight = 12
opt.winborder = "rounded"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.colorcolumn = ""
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.fillchars = { eob = " " }
opt.title = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.inccommand = "split"

opt.splitright = true
opt.splitbelow = true
opt.splitkeep = "screen"

opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undolevels = 10000
opt.autoread = true
opt.confirm = true

opt.mouse = "a"
opt.updatetime = 200
opt.timeoutlen = 400
opt.virtualedit = "block"
opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append("cI")
opt.iskeyword:append("-")

opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)
