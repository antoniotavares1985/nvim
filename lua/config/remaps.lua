vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "[E]xplorer" })
vim.keymap.set("n", "<leader>pm", vim.cmd.Lazy, { desc = "[P]ackage [M]anager" })
