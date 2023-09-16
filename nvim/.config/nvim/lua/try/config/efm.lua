local stylua = require("efmls-configs.formatters.stylua")
local autopep8 = require("efmls-configs.formatters.autopep8")

local languages = {
    python = { autopep8 },
    lua = { stylua },
}

local efmls_config = {
    filetypes = vim.tbl_keys(languages),
    settings = {
        rootMarkers = { ".git/" },
        languages = languages,
    },
    init_options = {
        documentFormatting = true,
        documentRangeFormatting = true,
    },
}

require("lspconfig").efm.setup(vim.tbl_extend("force", efmls_config, {
    capabilities = capabilities,
}))
