local lsp = require("lsp-zero")
local cmp = require("cmp")
local luasnip = require("luasnip")
require("mason").setup({
	ensure_installed = {
		"stylua",
	},
})

require("luasnip/loaders/from_vscode").lazy_load()

local kind_icons = {
	Text = "",
	Function = "",
	Method = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

lsp.preset("recommended")
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
	"emmet_ls",
	"jsonls",
	"pyright",
	"html",
})

lsp.configure("lua_ls", require("ayonc.settings.luals"))

lsp.configure("jsonls", require("ayonc.settings.jsonls"))

lsp.configure("pyright", require("ayonc.settings.pyright"))

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
cmp_nvim_lsp.default_capabilities(capabilities)

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-j>"] = cmp.mapping.scroll_docs(1, { "i", "c" }),
	["<C-k>"] = cmp.mapping.scroll_docs(-1, { "i", "c" }),
	["<CR>"] = cmp.mapping.confirm({ select = true }),
	["<C-space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = cmp_mappings,
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			-- Kind icons
			vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				nvim_lua = "[NVIM_LUA]",
				luasnip = "[Snippet]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == "eslint" then
		vim.cmd.LspStop("eslint")
		return
	end

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = false,
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})
