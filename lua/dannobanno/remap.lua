vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("i", "jk", "<Esc>")

keymap.set('n', '<leader>db', '<cmd> DapToggleBreakpoint <CR>')
keymap.set('n', '<leader>dr', '<cmd> DapContinue <CR>')
keymap.set('n', '<leader>dt', ':lua require("dapui").toggle() <CR>')
