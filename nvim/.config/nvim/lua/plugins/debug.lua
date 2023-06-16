return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            require("config.debug")
        end,
    },

    {
        "nvim-lua/plenary.nvim",
        "rcarriga/nvim-dap-ui",
    },
}
