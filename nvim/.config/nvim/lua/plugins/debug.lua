return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("config.debug")
    end,
}
