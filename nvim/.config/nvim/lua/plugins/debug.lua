return {
    'mfussenegger/nvim-dap',
    'nvim-lua/plenary.nvim',
    'rcarriga/nvim-dap-ui',
    config = function()
        require("config.debug")
    end,
}
