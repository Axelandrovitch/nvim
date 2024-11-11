-- lua/core/keymaps.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Ouvrir un terminal
map("n", "<leader>t", ":terminal<CR>", opts)

