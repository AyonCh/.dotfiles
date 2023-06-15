require("bufferline").setup({
	options = {
		mode = "buffers",
		indicator = {
			icon = " ",
			style = "icon"
		},
    diagnostics = "nvim_lsp",
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
