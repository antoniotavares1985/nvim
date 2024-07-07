return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsps = {
            'lua_ls',
            'omnisharp',
            'tsserver',
        }

        for _, v in ipairs(lsps) do
            require('lspconfig')[v].setup({
                capabilities = capabilities
            })
        end
    end
}
