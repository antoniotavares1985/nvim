vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set("n", "Q", "<cmd>qa<cr>")

vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem toggle<cr>")
vim.keymap.set("n", "<leader>pm", vim.cmd.Lazy)

-- window navigation
vim.keymap.set("n", "<c-h>", "<c-w>hza")
vim.keymap.set("n", "<c-j>", "<c-w>jza")
vim.keymap.set("n", "<c-k>", "<c-w>kza")
vim.keymap.set("n", "<c-l>", "<c-w>lza")

-- buffer navigation
vim.keymap.set("n", "<c-n>", vim.cmd.bNext)
vim.keymap.set("n", "<c-p>", vim.cmd.bprevious)

-- cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- clipboard
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")

-- options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

