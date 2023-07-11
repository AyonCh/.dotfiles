require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	no_italic = false,
	no_bold = false,
	highlight_overrides = {
		mocha = function(C)
			return {
				CmpBorder = { fg = C.surface2 },
				TelescopeBorder = { link = "FloatBorder" },
				Pmenu = { bg = C.none },
			}
		end,
	},
})

vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("catppuccin")
