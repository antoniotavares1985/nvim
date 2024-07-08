return {
    'williamboman/mason.nvim', -- mason to search for lsp and such
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                'lua_ls',
                'omnisharp',
                'tsserver',
            },
        })

        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

    end
}
