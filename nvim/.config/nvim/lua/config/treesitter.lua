require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    highlight = {
        enable = true,
        additional_regex_highlighting = false,
    },
    indent = { enable = true },
})
