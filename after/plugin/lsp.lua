vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP Actions',
    callback = function(event)
        local opts = {buffer = event.buf}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local default_setup = function(server)
    require('lspconfig')[server].setup({
        capabilities = lsp_capabilities,
    })
end

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "pyright",
        "vimls",
        "matlab_ls",
        "marksman",
        "texlab",
        "lua_ls",
        "julials",
        "rust_analyzer"
    },
    handlers = {
        default_setup,
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
        end
    },
})

local cmp = require('cmp')
-- local lsp_zero = require('lsp_zero')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'nvim_lua'},
        {name = 'luasnip', keyword_length = 2},
        {name = 'buffer', keyword_length = 3},
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        -- ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
