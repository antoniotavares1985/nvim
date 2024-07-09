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

vim.api.nvim_create_autocmd('LspAttach', {
    group = augroup("lsp_hover"),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
        end
    end,
})

vim.api.nvim_create_autocmd('LspAttach', {
    group = augroup("lsp_implementation"),
    callback = function()
        vim.keymap.set("n", "<leader>gI", vim.lsp.buf.implementation)
    end,
})

-- how to call telescope to view references with auto command?
-- vim.keymap.set("n", "<leader>fr", vim.lsp.buf.references)
