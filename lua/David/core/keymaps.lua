vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", ":!love main.lua<Enter>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '>-2<CR>gv=gv")
