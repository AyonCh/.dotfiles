local bufferline_status, bufferline = pcall(require, "bufferline")
if not bufferline_status then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		numbers = "ordinal",
		style_preset = {
			require("bufferline").style_preset.no_italic,
		},
		indicator = {
			icon = "",
			style = "icon",
		},
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = false,
		always_show_bufferline = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
				separator = true,
			},
		},
		show_buffer_close_icons = false,
	},
})

for i = 1, 9 do
	vim.keymap.set("n", "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<CR>")
end

vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>bdelete %<CR>")
