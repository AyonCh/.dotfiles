return {
	{
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufReadPost", "BufRead" },
	},
	{
		"windwp/nvim-autopairs",
		event = { "BufReadPost", "BufRead" },
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufRead" },
		config = function()
			require("nvim-treesitter.configs").setup({
				auto_install = true,

				highlight = {
					enable = true,

					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
			})
		end,
	},
}
