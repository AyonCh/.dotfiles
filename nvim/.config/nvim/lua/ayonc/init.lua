require("ayonc.options")
require("ayonc.remap")
require("ayonc.lazy")

local yankGrp = vim.api.nvim_create_augroup("YankHighlight", {})

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 40 })
  end,
  group = yankGrp,
  pattern = "*",
})

-- local cmdGrp = vim.api.nvim_create_augroup("CommandHeight", {})
--
-- vim.api.nvim_create_autocmd("CmdlineEnter", {
--   callback = function()
--     vim.opt.cmdheight = 1
--   end,
--   group = cmdGrp,
--   pattern = "*",
-- })
--
-- vim.api.nvim_create_autocmd("CmdlineLeave", {
--   callback = function()
--     vim.opt.cmdheight = 0
--   end,
--   group = cmdGrp,
--   pattern = "*",
-- })
