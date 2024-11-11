-- lua/plugins/autopairs.lua
return {
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        -- Configuration par défaut ou personnalisation
        check_ts = true,  -- Vérifie la syntaxe Tree-sitter pour un meilleur support
        ts_config = {
          lua = {'string'}, -- Support des chaînes de caractères en Lua
          javascript = {'template_string'}, -- Support des template strings en JavaScript
        },
      })

      -- Assurez-vous que nvim-autopairs fonctionne aussi bien dans les modes normal, insertion et visual
      -- Ajout de ce qui est déjà défini dans nvim-autopairs
      -- Pas besoin de configuration supplémentaire
    end,
  }
}

