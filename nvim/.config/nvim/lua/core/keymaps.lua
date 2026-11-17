local map = vim.keymap.set

local function opts(desc)
  return { noremap = true, silent = true, desc = desc }
end

map("n", "<C-h>", "<C-w>h", opts("Window left"))
map("n", "<C-j>", "<C-w>j", opts("Window down"))
map("n", "<C-k>", "<C-w>k", opts("Window up"))
map("n", "<C-l>", "<C-w>l", opts("Window right"))

map("n", "<C-Up>", "<cmd>resize +2<CR>", opts("Increase height"))
map("n", "<C-Down>", "<cmd>resize -2<CR>", opts("Decrease height"))
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", opts("Decrease width"))
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", opts("Increase width"))

map("n", "<leader>sv", "<cmd>vsplit<CR>", opts("Split vertical"))
map("n", "<leader>sh", "<cmd>split<CR>", opts("Split horizontal"))
map("n", "<leader>sx", "<cmd>close<CR>", opts("Close split"))

map("n", "<leader>bd", "<cmd>bdelete<CR>", opts("Delete buffer"))

map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts("Clear search highlight"))

map("n", "<C-d>", "<C-d>zz", opts("Half page down, centered"))
map("n", "<C-u>", "<C-u>zz", opts("Half page up, centered"))
map("n", "n", "nzzzv", opts("Next match, centered"))
map("n", "N", "Nzzzv", opts("Previous match, centered"))

map("v", "J", ":m '>+1<CR>gv=gv", opts("Move selection down"))
map("v", "K", ":m '<-2<CR>gv=gv", opts("Move selection up"))
map("v", "<", "<gv", opts("Indent left, keep selection"))
map("v", ">", ">gv", opts("Indent right, keep selection"))

map("x", "<leader>p", [["_dP]], opts("Paste without overwriting register"))
map({ "n", "v" }, "<leader>d", [["_d]], opts("Delete without yanking"))

map("n", "<leader>w", "<cmd>write<CR>", opts("Save"))
map("n", "<leader>q", "<cmd>quit<CR>", opts("Quit"))
map("n", "<leader>Q", "<cmd>qa!<CR>", opts("Quit all, discard"))

map("t", "<Esc><Esc>", [[<C-\><C-n>]], opts("Exit terminal mode"))
