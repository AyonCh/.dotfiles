require("ayonc.options")
require("ayonc.remap")
require("ayonc.lazy")

local yankGrp = vim.api.nvim_create_augroup("YankHighlight", {})

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 40 })
	end,
	group = yankGrp,
	pattern = "*",
})
