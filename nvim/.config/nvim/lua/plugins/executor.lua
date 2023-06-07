return {
    "google/executor.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("config.executor")
    end,
}
