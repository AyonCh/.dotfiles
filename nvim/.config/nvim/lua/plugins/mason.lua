return {
  {
    "williamboman/mason-lspconfig.nvim",
    event = "UIEnter",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tsserver",
          "lua_ls",
          "emmet_ls",
          "jsonls",
          "pyright",
          "html",
          "tailwindcss",
          "cssls",
        },
      })
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    event = "UIEnter",
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "prettier",
          "stylua",
          "black",
          "eslint_d",
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    event = "UIEnter",
    config = function()
      require("mason").setup()
    end,
  },
}
