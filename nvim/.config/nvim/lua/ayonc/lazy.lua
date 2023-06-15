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
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	{ "nvim-lua/plenary.nvim", lazy = true },

	{"rcarriga/nvim-notify", lazy = true},

	{"MunifTanjim/nui.nvim", lazy = true},

	-- Plugins
	{ "nvim-telescope/telescope.nvim" },

	{ "nvim-tree/nvim-tree.lua" },

	{ "nvim-lualine/lualine.nvim" },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" }
	},

	{ "nvim-treesitter/nvim-treesitter-context", event = { "BufReadPost", "BufNewFile" } },

	{ "p00f/nvim-ts-rainbow" },

	{ "windwp/nvim-autopairs" },

	{ "numToStr/Comment.nvim" },

	{ "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" } },

	{ "jose-elias-alvarez/null-ls.nvim", event = { "BufReadPre", "BufNewFile" } },

	{"lukas-reineke/indent-blankline.nvim", event = { "BufReadPost", "BufNewFile" } },

	{ "echasnovski/mini.indentscope", version = false, event = { "BufReadPre", "BufNewFile" } },

	{ "folke/noice.nvim" },

	{
		'akinsho/bufferline.nvim',
		version = "*",
	},

	{"stevearc/dressing.nvim", lazy = true},

	{"ggandor/leap.nvim"},

	-- LSP Support
	{ "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile" } },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Autocompletion
	{ "hrsh7th/nvim-cmp", event = "InsertEnter" },
	{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lua" 
	},

	-- Snippets
	{ "L3MON4D3/LuaSnip" },
	{ "rafamadriz/friendly-snippets" },

	-- Colorscheme
	{
		"rose-pine/neovim",
		name = "rose-pine",
		lazy = true
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true
	},
})
