local M = {}

function M.colormypencil(theme)
    require("tokyonight").setup({
        style = "night",
        transparent = true,
        theme = "tokyonight",
    })

    vim.cmd.colorscheme(theme)
end

return M
