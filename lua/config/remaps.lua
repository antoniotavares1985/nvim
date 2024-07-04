vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.wo.number = true
vim.wo.relativenumber = true

-- set commands for plugin toggle
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "[E]xplorer" })
vim.keymap.set("n", "<leader>pm", vim.cmd.Lazy, { desc = "[P]ackage [M]anager" })
vim.keymap.set("n", "<leader>as", vim.cmd.SessionSave, { desc = "[A]dd [S]ession" })

-- window navigation
vim.keymap.set("n", "<leader><left>", "<c-w>h", { desc = "Move to Left Window" })
vim.keymap.set("n", "<leader><down>", "<c-w>j", { desc = "Move to Bottom Window" })
vim.keymap.set("n", "<leader><up>", "<c-w>k", { desc = "Move to Top Window" })
vim.keymap.set("n", "<leader><right>", "<c-w>l", { desc = "Move to Right Window" })
vim.keymap.set("n", "<c-right>", "<cmd>vertical resize +5<cr>", { desc = "+ resize vertically" }) -- make the window biger vertically
vim.keymap.set("n", "<c-left>", "<cmd>vertical resize -5<cr>", { desc = "- resize vertically" }) -- make the window smaller vertically
vim.keymap.set("n", "<c-up>", "<cmd>horizontal resize +2<cr>", { desc = "+ resize horizontally" }) -- make the window bigger horizontally by pressing shift and =
vim.keymap.set("n", "<c-down>", "<cmd>horizontal resize -2<cr>", { desc = "- resize horizontally" }) -- make the window smaller horizontally
vim.keymap.set("n", "<leader>wvert", "<c-w>t<c-w>H", { desc = "move current window to vertical split" }) -- make the window smaller horizontally

-- buffer navigation
vim.keymap.set("n", "<c-x>", vim.cmd.bdelete, { desc = "Close Window" })
vim.keymap.set("n", "<c-b>", vim.cmd.buffers, { desc = "Show currently opened [B]uffers" })

-- cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<c-j>", "15j")
vim.keymap.set("n", "<c-k>", "15k")

-- clipboard
vim.keymap.set("x", "<leader>bp", '"_dP')
vim.keymap.set("v", "<leader>bp", '"_dP')
vim.keymap.set("n", "<leader>bp", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>P", '"+P')

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

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show [D]iagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic Quickfix [L]ist" })

-- Terminal mode quick
vim.keymap.set("t", "<s-esc>", "<c-\\><c-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })
vim.keymap.set("v", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })
vim.keymap.set("x", "<leader>term", "<cmd>terminal<cr>", { desc = "Open terminal mode" })

-- Alpha
vim.keymap.set("n", "Q", ":Alpha<CR>", { desc = "Toggle Alpha", silent = true })

-- Awesome shortcuts
vim.keymap.set({ "n", "i", "v", "x" }, "<c-space>", "<c-x><c-f>", { desc = " Builtin Auto Complete" })

