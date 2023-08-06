return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap-python",
    },
    config = function()
        require("config.debug")
    end,
}
