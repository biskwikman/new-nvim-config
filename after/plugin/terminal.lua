require("toggleterm").setup{}
vim.keymap.set("n", "<leader>te", "<cmd>:ToggleTerm size=20 dir=$HOME direction=horizontal<cr>")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
