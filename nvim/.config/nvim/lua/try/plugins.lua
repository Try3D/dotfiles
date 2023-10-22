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
        "mbbill/undotree",
    },

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },

    {
        "uga-rosa/ccc.nvim",
        config = function()
            require("try.config.ccc")
        end,
    },

    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-context"
        },
        config = function()
            require("try.config.treesitter")
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
            require("try.config.debug")
        end,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("try.config.comment")
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                },
            })
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("try.config.telescope")
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
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = { char = { "┊" } },
            scope = {
                enabled = false
            }
        },
    },

    {
        "theprimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("try.config.harpoon")
        end,
    },

    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("try.config.luasnip")
        end,
    },

    {
        "google/executor.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("try.config.executor")
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
            "simrat39/rust-tools.nvim",
        },
        config = function()
            require("try.config.cmp")
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("try.config.lualine")
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
            require("try.config.colorscheme")
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            require("try.config.lsp")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
        },
        config = function()
            require("try.config.lsp")
        end,
    },

    {
        "creativenull/efmls-configs-nvim",
        config = function()
            require("try.config.efm")
        end,
    },
}, {})
