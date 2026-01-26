local function get_key()
    local branch = vim.fn.system("git branch --show-current")
    local cwd = vim.loop.cwd()
    if branch then
        cwd = cwd .. "::" .. branch
    end
    return cwd
end

local name = get_key()

return {
    "ThePrimeagen/harpoon",
    lazy = false,
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                key = get_key,
                save_on_toggle = true,
            }
        }
        )
        vim.keymap.set("n", "<leader>a", function()
            harpoon:list(name):add()
        end)
        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list(name))
        end)

        vim.keymap.set("n", "<C-h>", function()
            harpoon:list(name):select(1)
        end)
        vim.keymap.set("n", "<C-t>", function()
            harpoon:list(name):select(2)
        end)
        vim.keymap.set("n", "<C-n>", function()
            harpoon:list(name):select(3)
        end)
        vim.keymap.set("n", "<C-s>", function()
            harpoon:list(name):select(4)
        end)
        vim.keymap.set("n", "<C-g>", function()
            harpoon:list(name):select(5)
        end)
        vim.keymap.set("n", "<C-c>", function()
            harpoon:list(name):select(6)
        end)
    end,
}
