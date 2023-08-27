local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("config.treesitter")
        end,
    },

    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "mfussenegger/nvim-dap-python",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("config.debug")
        end,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("config.comment")
        end,
    },

    {
        "TimUntersberger/neogit",
        config = function()
            require("config.git")
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("config.telescope")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
            return vim.fn.executable("make") == 1
        end,
    },

    {
        "try3d/formatter.nvim",
        config = function()
            require("config.formatter")
        end,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup({ char = "┊" })
        end,
    },

    {
        "theprimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("config.harpoon")
        end,
    },

    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("config.luasnip")
        end,
    },

    {
        "google/executor.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("config.executor")
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        },
        config = function()
            require("config.cmp")
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("config.lualine")
        end,
    },

    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup()
        end,
    },

    {
        "folke/tokyonight.nvim",
        config = function()
            require("config.colorscheme")
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            require("config.lsp")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            require("config.lsp")
        end,
    },
}, {})
