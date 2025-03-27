-- lua/core/keymaps.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('i', '<C-j>', '<C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<C-p>', { noremap = true, silent = true })
