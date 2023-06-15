require("notify").setup({
	render = "compact",
	top_down = false,
	max_width = 50,
	background_colour = "#000000",
})

vim.keymap.set("n", "<leader>un", function()
	require("notify").dismiss({ silent = true, pending = true })
end)
