require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = {
		"c",
		"css",
		"lua",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"python",
		"embedded_template",
		"comment"
	},

	sync_install = false,

	auto_install = false,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
	},
})

require("nvim-autopairs").setup()
