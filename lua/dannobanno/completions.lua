-- nvim cmp setup
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    sources = {
        { name = 'nvim_lsp', keyword_length = 3 },
        { name = 'nvim_lsp_signature_help' },
        { name = 'luasnip', keyword_length = 2},
        { name = 'nvim_lua', keyword_length = 2},
        { name = 'buffer', keyword_length = 2},
        { name = 'calc' },
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = {
                nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
            }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    }
})
