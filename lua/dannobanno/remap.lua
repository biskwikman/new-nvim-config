vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("i", "jk", "<Esc>")
-- keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
-- keymap.set("n", "<leader>t", "<cmd>NvimTreeFocus<cr>")

-- doesnt work
-- local status_ok, which_key = pcall(require, "which-key")
-- if not status_ok then
    -- return
-- end

-- local opts = {
    -- mode = "n",
    -- prefix = "<leader>",
    -- buffer = nil,
    -- silent = true,
    -- noremap = true,
    -- nowait = true,
-- }

-- local mappings = {
    -- ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer"}
-- }

-- which_key.register(mappings, opts)
