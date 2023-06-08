local cmp = require("cmp")
local lspkind = require("lspkind")
local luasnip = require("luasnip")
local tabnine = require("cmp_tabnine.config")

tabnine:setup({
    max_lines = 1000,
    max_num_results = 20,
    sort = true,
    run_on_every_keystroke = true,
    snippet_placeholder = "..",
    ignored_file_types = {},
    show_prediction_strength = false,
})

lspkind.init()

local menu = {
    cmp_tabnine = "[TAB]",
    luasnip = "[SNIP]",
    buffer = "[Buf]",
    nvim_lsp = "[LSP]",
    path = "[PATH]",
}

luasnip.config.setup()

cmp.setup({
    formatting = {
        format = function(entry, vim_item)
            vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
            vim_item.menu = menu[entry.source.name]
            if entry.source.name == "cmp_tabnine" then
                local detail = (entry.completion_item.labelDetails or {}).detail
                vim_item.kind = "󰕣"
                if detail and detail:find(".*%%.*") then
                    vim_item.kind = vim_item.kind .. " " .. detail
                end
            end
            local maxwidth = 80
            vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
            return vim_item
        end,
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
        ["<C-x>"] = cmp.mapping.abort(),
        ["<C-Space>"] = cmp.mapping.complete({}),
        ["<c-e>"] = cmp.mapping(cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        })),
        ["<c-y>"] = cmp.mapping(cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        })),
    }),
    sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
    },
    experimental = {
        ghost_text = true,
    },
})
