-- Dans lua/plugins/treesitter.lua ou un fichier similaire
return function()
  local treesitter = require("nvim-treesitter.configs")

  treesitter.setup({
    -- Activer les parsers pour les langages dont tu as besoin
    ensure_installed = { "c", "lua", "python", "javascript", "bash" },  -- Liste des langages à installer
    highlight = {
      enable = true,  -- Activer la coloration syntaxique
    },
    indent = {
      enable = false,  -- Activer l'indentation automatique avec Treesitter
    },
    -- Optionnel : Tu peux activer plus d'options ici (autres modules de Treesitter)
  })
end

