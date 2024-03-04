return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    hijack_cursor = true,
    view = {
      adaptive_size = true,
      width = 30,
      side = "left",
    },
    git = {
      enable = true,
      ignore = false,
    },
  },
  keys = {
    {"<Leader>e", "<cmd>NvimTreeToggle<CR>", desc = "toggle file browser"},
    {"<Leader>t", "<cmd>NvimTreeFocus<CR>", desc = "focus file browser"},
  }
}
