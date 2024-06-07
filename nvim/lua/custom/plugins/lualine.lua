return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "",
        theme = "tokyonight",
        section_separators = "",
      },
      sections = {
        lualine_a = { { "mode", color = { gui = "bold" } } },
        lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
          {
            require("custom.utils").get_lsp(),
            icon = " ",
            color = {
              gui = "bold",
            },
          },
        },
        lualine_y = { "filetype" },
        lualine_z = { "progress" },
      },
    })
  end,
}
