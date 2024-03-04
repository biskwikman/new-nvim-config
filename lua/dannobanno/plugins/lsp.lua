return  {
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        {
            "VonHeikemen/lsp-zero.nvim",
            branch = "v3.x",
            lazy = true,
            config = false,
        },
        {
            "neovim/nvim-lspconfig",
            dependencies = {
                { "hrsh7th/cmp-nvim-lsp" },
            },
        },
        { "hrsh7th/cmp-nvim-lua" },
        {
            "hrsh7th/nvim-cmp",
            dependencies = {
                { "L3MON4D3/LuaSnip" },
            },
        },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-nvim-lsp-signature-help" },
        -- { "hrsh7th/cmp-vsnip" },
        -- { "hrsh7th/vim-vsnip" },
        { "hrsh7th/cmp-cmdline" },
        { "saadparwaiz1/cmp_luasnip" },
        { "rafamadriz/friendly-snippets" },
        { 'tikhomirov/vim-glsl' },
}
