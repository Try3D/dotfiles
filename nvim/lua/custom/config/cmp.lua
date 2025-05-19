local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")

luasnip.config.setup()

require("lspkind").init()

local menu = {
  path = "[PATH]",
  nvim_lsp = "[LSP]",
  luasnip = "[SNIP]",
  buffer = "[Buf]",
  vim_dadbod_completion = "[DB]",
}

cmp.setup({
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
      menu = menu,
    }),
  },

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
    ["<C-d>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<c-y>"] = cmp.mapping(cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })),
  }),

  sources = {
    { name = "path" },
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "buffer" },
  },

  experimental = {
    ghost_text = true,
  },
})

cmp.setup.filetype({ "sql" }, {
  sources = {
    { name = "vim-dadbod-completion" },
    { name = "buffer" },
  },
})
