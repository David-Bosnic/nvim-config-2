return {
    "tpope/vim-fugitive",

    config = function()
        vim.keymap.set("n", "<leader>gs", "<CMD>vertical rightbelow Git<CR>")
    end
}
