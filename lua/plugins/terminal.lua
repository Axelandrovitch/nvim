-- ~/.config/nvim/lua/plugins/terminal.lua
return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<leader>t]], -- Utilisation de Leader + t (Espace + t) pour ouvrir/fermer le terminal
      direction = "float",         -- Utilisation d'un terminal flottant
      float_opts = {
        border = "curved",        -- Options de bordure ('single', 'double', 'curved', etc.)
        width = vim.o.columns,    -- Utiliser la largeur complète de la fenêtre
        height = math.floor(vim.o.lines * 0.3), -- Définir la hauteur à 30% de l'écran (modifiable)
        row = vim.o.lines - math.floor(vim.o.lines * 0.3), -- Positionner en bas de la fenêtre
        col = 0,                  -- Alignement à gauche
      },
      shade_terminals = true,     -- Ombre pour le terminal (optionnel)
    })
  end
}

