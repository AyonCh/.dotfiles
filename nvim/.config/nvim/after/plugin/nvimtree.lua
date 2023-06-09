vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = true,
	view = {
		width = 30,
		hide_root_folder = true,
		side = "left",
	},
})

vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFindFileToggle)
