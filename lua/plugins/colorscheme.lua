-- lua/plugins/colorscheme.lua
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Choisir entre "latte", "frappe", "macchiato", "mocha"
        transparent_background = false,
        integrations = {
          treesitter = true,
          telescope = true,
          -- Autres intégrations si besoin
        },
      })

      -- Activer le thème immédiatement après la configuration
      vim.cmd.colorscheme("catppuccin")
    end,
  }
}

