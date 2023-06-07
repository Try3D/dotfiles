require("formatter").setup({
    filetype = {
        rust = { require("formatter.filetypes.rust").rustfmt },
        lua = { require("formatter.filetypes.lua").stylua },
        c = { require("formatter.filetypes.c").clangformat },
        ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
    },
})

vim.keymap.set({ "n", "v" }, "<leader><C-f>", "<cmd>Format<CR>")
