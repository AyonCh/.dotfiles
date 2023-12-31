return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPost", "BufRead" },
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = "eol",
				delay = 1000,
				ignore_whitespace = false,
			},
		})
	end,
}
