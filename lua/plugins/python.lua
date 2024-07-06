return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        -- Python-specific keymaps
        local on_attach = function(client, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr }
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        end

        -- Configure pylsp
        lspconfig.pylsp.setup {
            on_attach = on_attach,
            capabilities = cmp_nvim_lsp.default_capabilities(),
            settings = {
                pylsp = {
                    plugins = {
                        pycodestyle = { enabled = true },
                        flake8 = { enabled = true },
                        pylint = { enabled = false },
                        jedi_completion = { enabled = true },
                        jedi_hover = { enabled = true },
                        jedi_references = { enabled = true },
                        jedi_signature_help = { enabled = true },
                        jedi_symbols = { enabled = true },
                    }
                }
            }
        }
    end
}
