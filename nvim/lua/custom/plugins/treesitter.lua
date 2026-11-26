return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
    "windwp/nvim-ts-autotag",
  },

  config = function()
    require("nvim-ts-autotag").setup()

    require("nvim-treesitter").setup()

    require("nvim-treesitter").install("all")

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
