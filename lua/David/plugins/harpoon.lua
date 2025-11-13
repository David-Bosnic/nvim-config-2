return {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    setting = {
        save_on_ui_close = true,
        save_on_toggle = true,
    },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()
        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end)
        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        vim.keymap.set("n", "<C-h>", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set("n", "<C-t>", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set("n", "<C-n>", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set("n", "<C-s>", function()
            harpoon:list():select(4)
        end)

        vim.keymap.set("n", "<C-g>", function()
            harpoon:list():select(5)
        end)
        vim.keymap.set("n", "<C-c>", function()
            harpoon:list():select(6)
        end)
    end,
}
