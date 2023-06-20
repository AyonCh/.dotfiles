vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if pcall(require, "nvim-tree") then
	require("nvim-tree").setup({
		disable_netrw = true,
		hijack_netrw = true,
		view = {
			width = 30,
			side = "left",
		},
		renderer = {
			root_folder_label = false,
		},
	})

	vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFindFileToggle)
else
	print("Nvim-tree not installed!")
	return
end
