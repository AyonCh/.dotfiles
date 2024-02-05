return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        no_italic = false,
        no_bold = false,
        highlight_overrides = {
          mocha = function(C)
            return {
              CmpBorder = { fg = C.surface2 },
              TelescopeBorder = { link = "FloatBorder" },
              Pmenu = { bg = C.none },
            }
          end,
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "main",
        styles = {
          transparency = true,
        },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true
      })
    end,
  },
}
