return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim",
    -- "zbirenbaum/copilot.lua",
    -- "zbirenbaum/copilot-cmp",
  },
  config = function()
    require("custom.config.cmp")
    -- require("copilot").setup()
    -- require("copilot_cmp").setup()
  end,
}
