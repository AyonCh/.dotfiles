return {
  Lua = {
    diagnostics = {
      globals = { "vim" },
    },
    workspace = {
      library = {
        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
        [vim.fn.stdpath("config") .. "/lua"] = true,
      },
    },
    format = {
      enable = true,
      defaultConfig = {
        indent_style = "tab",
        ident_size = "2",
      },
    },
  },
}
