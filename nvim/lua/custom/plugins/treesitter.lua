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
    --
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",
      ignore_install = { "ipkg" },

      highlight = {
        enable = true,
        additional_regex_highlighting = false,

        disable = function(lang, buf)
          local max_filesize = 1000 * 1024
          local ok, stats =
            pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },

      incremental_selection = {
        enable = false,
      },

      indent = {
        enable = false,
      },
    })
  end,
}
