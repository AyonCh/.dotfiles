local telescope_status, _ = pcall(require, "telescope")
if not telescope_status then
	return
end

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<ESC>"] = "close",
			},
		},
	},
})
