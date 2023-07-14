local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("core.sets")
require("core.mappings")
require("core.autocmd")

require("lazy").setup({
    require("plugins.treesitter"),
    require("plugins.comment"),
    -- require("plugins.git"),
    require("plugins.telescope"),
    require("plugins.lsp"),
    require("plugins.rust"),
    require("plugins.formatter"),
    require("plugins.indent"),
    require("plugins.harpoon"),
    require("plugins.autopairs"),
    require("plugins.luasnip"),
    require("plugins.executor"),
    require("plugins.cmp"),
    require("plugins.debug"),
    require("plugins.lualine"),
    require("plugins.surround"),
    require("plugins.debug"),
    require("plugins.colorscheme"),
}, {})
