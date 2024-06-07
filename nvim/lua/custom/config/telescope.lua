require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = require("telescope.actions").close,
        ["<C-q>"] = require("telescope.actions").send_to_qflist,
      },
    },
  },
  extensions = {
    undo = {},
  },
})

pcall(require("telescope").load_extension, "fzf")

require("telescope").load_extension("undo")

vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files)
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers)
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics)
vim.keymap.set("n", "<C-;>", require("telescope.builtin").git_files)
vim.keymap.set("n", "<leader>fgc", require("telescope.builtin").git_commits)
vim.keymap.set("n", "<leader>fgb", require("telescope.builtin").git_branches)
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
