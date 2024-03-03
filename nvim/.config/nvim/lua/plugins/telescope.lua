return {
  "nvim-telescope/telescope.nvim",
  event = "UIEnter",
  config = function()
    local builtin = require("telescope.builtin")

    require("telescope").setup()

    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>ps", function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
  end,
}
