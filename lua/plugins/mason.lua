return {
-- mason to search for lsp and such
    "mason-org/mason.nvim",
    dependencies = {
        "mason-org/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
--         local lsps = {
--             'lua_ls',
--             'omnisharp',
--             'eslint',
--         }

        -- setup mason
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })

        -- setup mason lsp config
--         require("mason-lspconfig").setup({
--             ensure_installed = lsps,
--             automatic_enable = lsps,
--         })

    end
}

