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

	{
		"MunifTanjim/nui.nvim",
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

	{ "p00f/nvim-ts-rainbow" },

	{ "windwp/nvim-autopairs" },

	{ "numToStr/Comment.nvim" },

	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"jose-elias-alvarez/null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"jay-babu/mason-null-ls.nvim",
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
	},

	{
		"echasnovski/mini.indentscope",
		version = false,
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"akinsho/bufferline.nvim",
		version = "*",
	},

	{ "ggandor/leap.nvim" },

	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				build = ":MasonUpdate",
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	-- Colorscheme
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
})
