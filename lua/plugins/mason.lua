return {
    'williamboman/mason.nvim', -- mason to search for lsp and such
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup({
            require("mason-lspconfig").setup(),
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
