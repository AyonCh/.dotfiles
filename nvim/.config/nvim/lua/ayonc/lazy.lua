-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Utilities
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},

	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},

	-- Plugins
	{ "nvim-telescope/telescope.nvim" },

	{ "nvim-tree/nvim-tree.lua" },

	{ "nvim-lualine/lualine.nvim" },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufReadPost", "BufNewFile" },
	},

	{ "windwp/nvim-autopairs" },

	{ "numToStr/Comment.nvim" },

	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},

	{ "NvChad/nvim-colorizer.lua" },

	{ "onsails/lspkind.nvim" },

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "rafamadriz/friendly-snippets" },

	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	},

	{ "williamboman/mason-lspconfig.nvim" },

	{ "neovim/nvim-lspconfig" },

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	{ "jayp0521/mason-null-ls.nvim" },

	-- Colorscheme
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
}, {
	install = {

		colorscheme = { "catppuccin" },
	},
})
