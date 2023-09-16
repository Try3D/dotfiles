require("executor").setup({
    use_split = false,
})

vim.keymap.set("n", "<C-s>", "<cmd>ExecutorRun<CR>")
vim.keymap.set("n", "<leader>rs", "<cmd>ExecutorSetCommand<CR>")
vim.keymap.set("n", "<C-t>", "<cmd>ExecutorToggleDetail<CR>")
