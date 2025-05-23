return {
  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "gofmt" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        astro = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        python = { "ruff_format" },
        scss = { "prettier" },
        css = { "prettier" },
      },
      format_on_save = {
        -- timeout_ms = 500,
        -- lsp_fallback = true,
      },
    })

    vim.keymap.set("n", "<c-f>", function()
      conform.format()
    end)
  end,
}
