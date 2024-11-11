-- lua/plugins/formatting.lua
return {
  {
    "sbdchd/neoformat",
    config = function()
      -- Configuration de Neoformat
      vim.api.nvim_exec([[
        " Définir clang-format comme le formatteur par défaut pour les fichiers C
        autocmd FileType c setlocal formatprg=clang-format
        autocmd FileType cpp setlocal formatprg=clang-format
      ]], false)
    end,
  }
}

