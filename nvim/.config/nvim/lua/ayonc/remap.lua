local opts = { silent = true }

-- Escaping insert mode
vim.keymap.set("i", "<C-c>", "<Esc>", opts)
-- Splits
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
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("n", "Q", "<nop>", opts)
-- Copying
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>Y", '"+Y', opts)
