return {
  "theprimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
    vim.keymap.set("n", "<C-e>", require("harpoon.ui").toggle_quick_menu)

    vim.keymap.set("n", "L", function()
      require("harpoon.ui").nav_file(1)
    end)
    vim.keymap.set("n", "U", function()
      require("harpoon.ui").nav_file(2)
    end)
    vim.keymap.set("n", "Y", function()
      require("harpoon.ui").nav_file(3)
    end)
    vim.keymap.set("n", "&", function()
      require("harpoon.ui").nav_file(4)
    end)
  end,
}
