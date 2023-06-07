vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("v", "<C-e>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-i>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>pa", "<cmd>Explor<CR>")
vim.keymap.set("n", "<leader>pv", "<cmd>Vexplor<CR>")
vim.keymap.set("n", "<leader>ps", "<cmd>Sexplor<CR>")

vim.keymap.set("n", "<leader>n", "<C-w>h")
vim.keymap.set("n", "<leader>e", "<C-w>j")
vim.keymap.set("n", "<leader>i", "<C-w>k")
vim.keymap.set("n", "<leader>o", "<C-w>l")

vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

vim.keymap.set("n", "[b", "<cmd>bprev<CR>")
vim.keymap.set("n", "]b", "<cmd>bnext<CR>")

vim.keymap.set("n", "Y", 'y$')
vim.keymap.set("n", "d!", 'Vd')
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>")

vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")
vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
