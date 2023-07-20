return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "folke/neodev.nvim",
        },
        config = function()
            require("config.lsp")
        end,
    },

    { "j-hui/fidget.nvim", tag = "legacy", opts = {} },
}
