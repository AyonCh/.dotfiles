local opts = { silent = true }

-- Escaping insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("i", "Jk", "<ESC>", opts)
vim.keymap.set("i", "jK", "<ESC>", opts)
vim.keymap.set("i", "JK", "<ESC>", opts)
-- Splits
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-left>", "<cmd>vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-right>", "<cmd>vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-up>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<C-down>", "<cmd>resize +2<CR>", opts)
-- Utility
vim.keymap.set("n", "J", "mzJ`z", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)
vim.keymap.set("x", "p", '"_dP', opts)
vim.keymap.set("v", ">", ">gv", opts)
vim.keymap.set("n", "<", "<gv", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "Q", "<nop>", opts)
-- Copying
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>Y", '"+Y', opts)
