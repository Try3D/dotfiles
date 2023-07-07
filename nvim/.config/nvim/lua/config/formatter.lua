require("formatter").setup({
    filetype = {
        c = { require("formatter.filetypes.c").clangformat },
        lua = { require("formatter.filetypes.lua").stylua },
        rust = { require("formatter.filetypes.rust").rustfmt },
        ocaml = { require("formatter.filetypes.ocaml").ocamlformat },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
        },
    },
})

vim.keymap.set({ "n", "v" }, "<leader><C-f>", "<cmd>Format<CR>")
