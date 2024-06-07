local set = vim.keymap.set

set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

set("v", "<C-e>", ":m '>+1<CR>gv=gv")
set("v", "<C-i>", ":m '<-2<CR>gv=gv")

set("n", "<leader>pa", "<cmd>Explor<CR>")
set("n", "<leader>pl", "<cmd>Lexplor<CR>")
set("n", "<leader>ps", "<cmd>Sexplor<CR>")

set("n", "<leader>n", "<C-w>h")
set("n", "<leader>e", "<C-w>j")
set("n", "<leader>i", "<C-w>k")
set("n", "<leader>o", "<C-w>l")

set("n", "<C-Up>", "<cmd>resize -2<cr>")
set("n", "<C-Down>", "<cmd>resize +2<cr>")
set("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
set("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

set("n", "[b", "<cmd>bprev<CR>")
set("n", "]b", "<cmd>bnext<CR>")

set({ "n", "v" }, "<leader>y", [["+y]])

set("n", "<leader>xl", "<cmd>lopen<cr>")

set("n", "<leader>q", "<cmd>copen<cr>")
set("n", "<c-]>", "<cmd>cnext<cr>")
set("n", "<c-[>", "<cmd>cprev<cr>")

set("n", "X", "dd")

set("n", "dd", "<nop>")
set("n", "yy", "<nop>")
set("n", ">>", "<nop>")
set("n", "<<", "<nop>")

set("x", "<leader>p", [["_dP]])

set("n", "<C-u>", "<C-u>zz")
set("n", "<C-d>", "<C-d>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")
