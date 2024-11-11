-- lua/core/options.lua

local opt = vim.opt

opt.number = true                    -- Numéros de ligne
opt.relativenumber = true            -- Numéros relatifs
opt.tabstop = 4                       -- Largeur de tabulation
opt.shiftwidth = 4                    -- Indentation automatique
opt.expandtab = true                  -- Convertit les tabulations en espaces
opt.smartindent = true                -- Indentation intelligente
opt.wrap = false                      -- Pas de retour à la ligne
opt.termguicolors = true              -- Couleurs dans le terminal
opt.splitright = true                 -- Fenêtre de split à droite
opt.splitbelow = true                 -- Fenêtre de split en bas

opt.cindent = true                    -- Indentation C
opt.autoindent = true                 -- Indentation automatique

