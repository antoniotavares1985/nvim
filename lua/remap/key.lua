vim.g.mapleader = " "

vim.keymap.set("n", "Q", "<cmd>qa<cr>")

vim.keymap.set("n", "<c-h>", "<c-w>hza")
vim.keymap.set("n", "<c-j>", "<c-w>jza")
vim.keymap.set("n", "<c-k>", "<c-w>kza")
vim.keymap.set("n", "<c-l>", "<c-w>lza")

vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem toggle<cr>")
vim.keymap.set("n", "<leader>pm", vim.cmd.Lazy)
