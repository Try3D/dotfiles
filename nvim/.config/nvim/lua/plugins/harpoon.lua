return {
    "theprimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("config.harpoon")
    end,
}
