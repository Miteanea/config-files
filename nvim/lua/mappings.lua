local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-u>', '<C-u>zz', opts)
map('n', '<C-d>', '<C-d>zz', opts)
