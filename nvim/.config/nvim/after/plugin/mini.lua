vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"help",
		"NvimTree",
		"lazy",
		"mason",
	},
	callback = function()
		vim.b.miniindentscope_disable = true
	end,
})

require("mini.indentscope").setup({
	symbol = "│"
})

