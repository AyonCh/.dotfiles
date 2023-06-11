local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- Utility
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "nvim-lua/plenary.nvim", lazy = true },

	-- Plugins
	{
		"nvim-telescope/telescope.nvim",
	},

	{
		"nvim-tree/nvim-tree.lua",
	},
	{
		"nvim-lualine/lualine.nvim",
	},
	
	-- Colorscheme
	{ 
		"rose-pine/neovim", 
		name = 'rose-pine',
	},
	{ 
		"catppuccin/nvim", 
		name = "catppuccin"
	}
}) 
