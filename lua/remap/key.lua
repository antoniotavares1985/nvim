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
vim.keymap.set("n", "<c-x>", vim.cmd.bdelete)

-- cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- clipboard
vim.keymap.set("x", "<leader>bp", '"_dP')
vim.keymap.set("v", "<leader>bp", '"_dP')
vim.keymap.set("n", "<leader>bp", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>d", '"+d')
vim.keymap.set("v", "<leader>d", '"+d')

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

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Terminal mode quick
vim.keymap.set("t", "<leader><esc>", "<c-\\><c-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })
vim.keymap.set("v", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })
vim.keymap.set("x", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })

-- Alpha
vim.keymap.set("n", "<leader>;", ":Alpha<CR>", { desc = "Toggle Alpha", silent = true })
