local keymaps = {
  -- Escaping insert mode
  { "i", "jk",        "<ESC>" },
  { "i", "Jk",        "<ESC>" },
  { "i", "jK",        "<ESC>" },
  { "i", "JK",        "<ESC>" },

  -- Splits
  { "n", "<C-h>",     "<C-w>h" },
  { "n", "<C-j>",     "<C-w>j" },
  { "n", "<C-k>",     "<C-w>k" },
  { "n", "<C-l>",     "<C-w>l" },
  { "n", "<C-left>",  "<cmd>vertical resize -2<CR>" },
  { "n", "<C-right>", "<cmd>vertical resize +2<CR>" },
  { "n", "<C-up>",    "<cmd>resize -2<CR>" },
  { "n", "<C-down>",  "<cmd>resize +2<CR>" },

  -- Utility
  { "n", "J",         "mzJ`z" },
  { "n", "<C-d>",     "<C-d>zz" },
  { "n", "<C-u>",     "<C-u>zz" },
  { "n", "n",         "nzzzv" },
  { "n", "N",         "Nzzzv" },
  { "x", "p",         '"_dP' },
  { "v", ">",         ">gv" },
  { "v", "<",         "<gv" },
  { "v", "J",         ":m '>+1<CR>gv=gv" },
  { "v", "K",         ":m '<-2<CR>gv=gv" },
  { "n", "Q",         "<nop>" },

  -- Copying
  { "n", "<leader>y", '"+y' },
  { "v", "<leader>y", '"+y' },
  { "n", "<leader>Y", '"+Y' },
}

for _, i in ipairs(keymaps) do
  vim.keymap.set(i[1], i[2], i[3], { silent = true })
end
