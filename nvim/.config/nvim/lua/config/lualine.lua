require("lualine").setup({
    options = {
        icons_enabled = true,
        component_separators = "",
        section_separators = "",
        theme = "tokyonight",
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { require("util").get_lsp() },
        lualine_y = { "filetype" },
        lualine_z = { "progress" },
    },
})
