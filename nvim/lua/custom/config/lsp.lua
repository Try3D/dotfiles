require("mason").setup()

require("mason-tool-installer").setup({
  ensure_installed = {
    "css-lsp",
    "clangd",
    "debugpy",
    "gopls",
    "html-lsp",
    "jdtls",
    "json-lsp",
    "lua-language-server",
    "prettier",
    "pyright",
    "ruff",
    "stylua",
    "svelte-language-server",
    "tailwindcss-language-server",
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
  vim.keymap.set("n", "<leader>K", vim.lsp.buf.signature_help)

  vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
  vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder)
  vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder)
  vim.keymap.set("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end)

  vim.keymap.set("n", "<space>dq", vim.diagnostic.setloclist)
end

vim.lsp.config["lua_ls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      completion = {
        callSnippet = "Replace",
      },
    },
  },
}

vim.lsp.config["pyright"] = {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
      },
    },
  },
}

vim.lsp.config["clangd"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["html"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["cssls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["svelte"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["ts_ls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["tailwindcss"] = {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    tailwindCSS = {
      classAttributes = {
        "class",
        "className",
        "class:list",
        "classList",
        "ngClass",
        "headerClassName",
      },
    },
  },
}

vim.lsp.config["rust_analyzer"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["gopls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["jsonls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["zls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.config["jdtls"] = {
  capabilities = capabilities,
  on_attach = on_attach,
}

vim.lsp.enable({
  "lua_ls",
  "pyright",
  "clangd",
  "html",
  "cssls",
  "svelte",
  "ts_ls",
  "tailwindcss",
  "rust_analyzer",
  "gopls",
  "jsonls",
  "zls",
  "jdtls",
})
