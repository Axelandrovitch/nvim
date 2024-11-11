vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
require("core.options")
require("plugins")
require("config.lsp")

-- Définir Espace comme la touche leader

-- Redéfinir le yank pour utiliser le registre du presse-papiers par défaut
vim.api.nvim_set_keymap("n", "y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "yy", '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "y", '"+y', { noremap = true, silent = true })

vim.opt.guicursor = "n-v-i-c:block-Cursor"
