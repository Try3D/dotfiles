vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.o.completeopt = "menuone,noselect"
vim.wo.signcolumn = "yes"
vim.o.termguicolors = true
vim.opt.wrap = false
vim.opt.colorcolumn = "80"
vim.o.scrolloff = 8
vim.o.breakindent = true
vim.o.mouse = ""

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.undodir = os.getenv("HOME") .. "/.config/undodir/"

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 50
vim.o.timeout = true
vim.o.timeoutlen = 500

vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = "cp -r"
