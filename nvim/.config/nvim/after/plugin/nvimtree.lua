local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")
if not nvim_tree_status then
	return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvim_tree.setup({
	disable_netrw = true,
	hijack_netrw = true,
	view = {
		width = 30,
		side = "left",
	},
	renderer = {
		root_folder_label = false,
	},
	git = {
		enable = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "H",
			info = "I",
			warning = "W",
			error = "E",
		},
	},
})

vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFindFileToggle)
