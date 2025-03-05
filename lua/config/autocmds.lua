local function augroup(name)
    return vim.api.nvim_create_augroup("mouse_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd("VimResized", {
    group = augroup("resize_splits"),
    callback = function()
        vim.cmd("tabdo wincmd =")
    end,
})

-- set keybindings for autocommands when lsp attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = augroup("lsp_native"),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client ~= nil and client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        end
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = args.buf })
        vim.keymap.set("n", "<leader>gI", vim.lsp.buf.implementation, { buffer = args.buf })
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = args.buf })
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = args.buf })
        vim.keymap.set("n", "<leader>gr", function()
            require("telescope.builtin").lsp_references()
        end, { buffer = args.buf })
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, { buffer = args.buf })
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, { buffer = args.buf })
        vim.keymap.set("i", "<c-.>", vim.lsp.omnifunc, { buffer = args.buf })
    end,
})

