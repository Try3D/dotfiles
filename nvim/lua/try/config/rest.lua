require("rest-nvim").setup({
  stay_in_current_window_after_split = true,
  result = {
    formatters = {
      json = "jq",
    },
  },
})

vim.keymap.set("n", "<leader>re", "<Plug>RestNvim")
vim.keymap.set("n", "<leader>rp", "<Plug>RestNvimPreview")
vim.keymap.set("n", "<leader>rh", "<Plug>RestNvimLast")
