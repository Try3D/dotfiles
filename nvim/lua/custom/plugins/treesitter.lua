return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
    "windwp/nvim-ts-autotag",
  },

  config = function()
    require("nvim-ts-autotag").setup()

    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      ignore_install = { "ipkg" },

      highlight = {
        enable = true,
        additional_regex_highlighting = false,
      },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "(",
          node_incremental = "(",
          scope_incremental = "(",
          node_decremental = ")",
        },
      },

      indent = {
        enable = false,
      },
    })
  end,
}
