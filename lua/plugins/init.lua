-- Définition du path pour lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Les autres configurations de plugins
  require("plugins.colorscheme"),
  require("plugins.formatting"),
  require("plugins.autopairs"),

  -- Interface
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, config = require("plugins.telescope") },
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require("plugins.treesitter") },

  -- LSP et complétion
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",

  -- Outils spécifiques au C
  "mfussenegger/nvim-dap",
  {
    "github/copilot.vim",
    config = function()
      -- Configuration optionnelle si vous en avez besoin
    end
  }
})

