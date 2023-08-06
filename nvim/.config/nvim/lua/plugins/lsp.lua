return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            require("config.lsp")
        end,
    },
}
