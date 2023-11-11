require("mason").setup()

local on_attach = function()
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
    vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references)
    vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)
    vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols)
    vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols)

    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
    vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder)
    vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder)
    vim.keymap.set("n", "<leader>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end)
end

vim.keymap.set("n", "<leader><c-f>", function()
    vim.lsp.buf.format({ async = true })
end, opts)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").lua_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace",
            },
        },
    },
})

require("lspconfig").pyright.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("lspconfig").gopls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("rust-tools").setup({
    server = {
        standalone = true,
    },
    dap = {
        adapter = {
            type = "executable",
            command = "lldb-vscode",
            name = "rt_lldb",
        },
    },
})

require("lspconfig").clangd.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("lspconfig").html.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("lspconfig").cssls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("lspconfig").tsserver.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

require("lspconfig").svelte.setup({
    capabilities = capabilities,
    on_attach = on_attach,
})
