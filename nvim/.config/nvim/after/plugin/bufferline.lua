require("bufferline").setup({
	options = {
		mode = "buffers",
		indicator = {
			icon = " ",
			style = "icon"
		},
    diagnostics = "nvim_lsp",
    always_show_bufferline = true,
    diagnostics_indicator = function(_, _, diag)
      local icons = require("lazyvim.config").icons.diagnostics
      local ret = (diag.error and icons.Error .. diag.error .. " " or "")
        .. (diag.warning and icons.Warn .. diag.warning or "")
      return vim.trim(ret)
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
				separator = true,
      },
    },
  },
})
