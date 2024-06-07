local opt = vim.opt
local g = vim.g

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.completeopt = "menuone,noselect"
opt.signcolumn = "yes"
opt.wrap = false
opt.colorcolumn = "80"
opt.scrolloff = 10
opt.breakindent = true
opt.mouse = ""
opt.guicursor = "a:blinkon0"

opt.number = true
opt.relativenumber = true

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.config/undodir/nvim"

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 50
opt.timeout = true
opt.timeoutlen = 500

g.netrw_winsize = 20
g.netrw_banner = 0
g.netrw_localcopydircmd = "cp -r"
