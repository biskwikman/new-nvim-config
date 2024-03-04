require'nvim-treesitter.configs'.setup {
    ensure_installed = { "toml", "matlab", "julia", "rust", "python", "bash", "c", "lua", "vim", "vimdoc", "query" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
    rainbow = {
        enable = true,
        extendend_mode = true,
        max_file_lines = nil,
    }
}
