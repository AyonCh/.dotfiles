local nvim_treesitter_status, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not nvim_treesitter_status then
	return
end

local nvim_autopairs_status, nvim_autopairs = pcall(require, "nvim-autopairs")
if not nvim_autopairs_status then
	return
end

nvim_treesitter.setup({
	-- A list of parser names, or "all"
	ensure_installed = {
		"c",
		"css",
		"lua",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"python",
		"embedded_template",
		"comment",
	},

	sync_install = false,

	auto_install = false,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})

nvim_autopairs.setup()
