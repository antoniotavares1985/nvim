return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'williamboman/mason.nvim', -- mason to search for lsp and such
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsps = {
            'lua_ls',
            'ts_ls',
        }
        local cmp = require('cmp')

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
        require("mason-lspconfig").setup({
            ensure_installed = lsps,
            automatic_installation = true,
        })

        -- setup cmp for autocompletion
        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
            }, {
                    { name = 'buffer' },
                })
        })

        -- setup language servers
        for _, v in ipairs(lsps) do
            if (v == 'lua_ls') then
                require('lspconfig').lua_ls.setup({
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = {
                                    'vim',
                                }
                            }
                        }
                    }, capabilities = capabilities
                })
            else
                require('lspconfig')[v].setup({
                    capabilities = capabilities
                })
            end
        end
    end
}

