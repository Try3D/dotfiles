return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "j-hui/fidget.nvim",
            "folke/neodev.nvim"
        },
        config = function()
            require("config.lsp")
        end,
    },
}
