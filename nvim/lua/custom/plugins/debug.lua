return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    require("custom.config.debug")
  end,
}
