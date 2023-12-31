return {
  {
    "L3MON4D3/LuaSnip",
    event = { "BufReadPost", "BufRead" },
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_snipmate").lazy_load()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPost", "BufRead" },
    dependencies = {
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")

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
          documentation = cmp.config.window.bordered(),
          completion = cmp.config.window.bordered(),
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        mapping = cmp_mappings,
        formatting = {
          fields = { "kind", "abbr", "menu" },
          format = require("lspkind").cmp_format({
            mode = "symbol",
            menu = {
              nvim_lsp = "[Lsp]",
              buffer = "[Buffer]",
              path = "[Path]",
              luasnip = "[LuaSnip]",
            },
          }),
        },

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
          { name = "luasnip" },
        }),
        experimental = {
          ghost_text = true,
        },
      })
    end,
  },
}
