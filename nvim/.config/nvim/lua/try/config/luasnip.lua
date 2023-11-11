local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.config.set_config({
    history = true,
    updateevent = "TextChanged, TextChangedI",
    enable_autosnippets = true,
})

vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-v>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

vim.keymap.set("i", "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

ls.add_snippets(nil, {
    c = {
        s("mn", {
            t({ "int main(void) {", "    " }),
            i(1),
            t({ "", "}" }),
            i(0),
        }),

        s("in", {
            t("#include <"),
            i(1),
            t(".h>"),
        }),
    },

    html = {
        s("dt", {
            t({ "<!DOCTYPE html>", "", "<html>", "    <head>", "        <title>" }),
            i(1),
            t({ "</title>", "    </head>", "    <body>", "        " }),
            i(2),
            t({ "", "    </body>", "</html>" }),
        }),
    },
})
