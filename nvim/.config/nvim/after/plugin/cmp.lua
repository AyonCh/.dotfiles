local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = {
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-j>"] = cmp.mapping.scroll_docs(1, { "i", "c" }),
	["<C-k>"] = cmp.mapping.scroll_docs(-1, { "i", "c" }),
	["<CR>"] = cmp.mapping.confirm({ select = true }),
	["<C-space>"] = cmp.mapping.complete(),
}

cmp.setup({
	window = {
		completion = {
			border = {
				{ "╭", "CmpBorder" },
				{ "─", "CmpBorder" },
				{ "╮", "CmpBorder" },
				{ "│", "CmpBorder" },
				{ "╯", "CmpBorder" },
				{ "─", "CmpBorder" },
				{ "╰", "CmpBorder" },
				{ "│", "CmpBorder" },
			},
			winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
		},
		documentation = {
			border = {
				{ "╭", "CmpDocBorder" },
				{ "─", "CmpDocBorder" },
				{ "╮", "CmpDocBorder" },
				{ "│", "CmpDocBorder" },
				{ "╯", "CmpDocBorder" },
				{ "─", "CmpDocBorder" },
				{ "╰", "CmpDocBorder" },
				{ "│", "CmpDocBorder" },
			},
		},
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = cmp_mappings,
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = require("lspkind").cmp_format({
			mode = "symbol",
			menu = {
				buffer = "[Buffer]",
				nvim_lsp = "[Lsp]",
				nvim_lua = "[Lua]",
				luasnip = "[LuaSnip]",
				latex_symbols = "[Latex]",
			},
		}),
	},

	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
	experimental = {
		ghost_text = true,
	},
})
