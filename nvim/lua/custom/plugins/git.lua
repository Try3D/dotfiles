return {
  {
    "f-person/git-blame.nvim",
    config = function()
      require("gitblame").setup({
        enabled = false,
      })

      vim.keymap.set("n", "<leader>gi", "<cmd>GitBlameToggle<CR>")
      vim.keymap.set("n", "<leader>go", "<cmd>GitBlameOpenFileURL<CR>")
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
          change = { text = "~" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
      })
    end,
  },
}
