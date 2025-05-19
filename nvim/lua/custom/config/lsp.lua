require("mason").setup()

require("mason-tool-installer").setup({
  ensure_installed = {
    "css-lsp",
    "debugpy",
    "gopls",
    "html-lsp",
    "json-lsp",
    "lua-language-server",
    "prettier",
    "ruff",
    "stylua",
    "typescript-language-server",
  },
  run_on_start = true,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function()
  vim.lsp.inlay_hint.enable(true)

  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

  vim.keymap.set("n", "<c-h>", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end)

  vim.keymap.set("n", "gd", vim.lsp.buf.definition)
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references)
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
  vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)
  vim.keymap.set(
    "n",
    "<leader>ds",
    require("telescope.builtin").lsp_document_symbols
  )
  vim.keymap.set(
    "n",
    "<leader>ws",
    require("telescope.builtin").lsp_dynamic_workspace_symbols
  )

  vim.keymap.set("n", "K", vim.lsp.buf.hover)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder)
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder)
  vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end)

  vim.keymap.set("n", "<space>dq", vim.diagnostic.setloclist)
end

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

require("lspconfig").svelte.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").ts_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").astro.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").tailwindcss.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").gopls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").zls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").ocamllsp.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

require("lspconfig").jsonls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})
