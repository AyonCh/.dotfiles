return {
	"numToStr/Comment.nvim",
	event = { "BufReadPost", "BufRead" },
	config = function()
		require("Comment").setup({
			opleader = {
				line = "gc",
				block = "gb",
			},

			mappings = {
				basic = true,
				extra = true,
			},
		})
	end,
}
