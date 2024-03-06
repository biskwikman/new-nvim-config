local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local ensure_installed = {
    "bashls",
    "clangd",
    "glsl_analyzer",
    "julials",
    "lua_ls",
    "marksman",
    "matlab_ls",
    "perlnavigator",
    "pyright",
    "texlab",
    "vimls",
    "rust_analyzer",
}

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = ensure_installed,
    handlers = {
        bashls = function()
            require('lspconfig').bashls.setup({})
        end,
        clangd = function()
            require('lspconfig').clangd.setup({})
        end,
        glsl_analyzer = function()
            require('lspconfig').glsl_analyzer.setup({})
        end,
        julials = function()
            require('lspconfig').julials.setup({})
        end,
        lua_ls = function()
            require('lspconfig').lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' }
                        }
                    }
                }
            })
        end,
        marksman = function()
            require('lspconfig').marksman.setup({})
        end,
        matlab_ls = function()
            require('lspconfig').matlab_ls.setup({
                single_file_support = true,
            })
        end,
        perlnavigator = function()
            require('lspconfig').perlnavigator.setup({})
        end,
        texlab = function()
            require('lspconfig').texlab.setup({})
        end,
        vimls = function()
            require('lspconfig').vimls.setup({})
        end,
    },
})

require('mason-nvim-dap').setup({
    ensure_installed = { 'codelldb', 'bash', 'stylua' },
    handlers = {},
})

-- Diagnostics
local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = '',
    })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
    set signcolumn=yes
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
