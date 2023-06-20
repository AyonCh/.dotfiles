if pcall(require, "Comment") then
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
else
	print("Comment not installed!")
	return
end
