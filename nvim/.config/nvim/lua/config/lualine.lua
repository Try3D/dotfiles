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
        lualine_x = { require("utils").get_lsp() },
        lualine_y = { "filetype" },
        lualine_z = { "progress" },
    },
})
