require("formatter").setup({
    filetype = {
        c = { require("formatter.filetypes.c").clangformat },
        lua = { require("formatter.filetypes.lua").stylua },
        python = { require("formatter.filetypes.python").black },
        ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
    },
})

vim.keymap.set("n", "<leader><C-f>", "<cmd>Format<CR>")
