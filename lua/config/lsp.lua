-- lua/config/lsp.lua
local lspconfig = require("lspconfig")

-- Variable pour stocker l'état d'activation
local clangd_active = false

-- Fonction pour activer ou désactiver clangd
function ToggleClangd()
  if clangd_active then
    -- Désactiver clangd
    vim.lsp.stop_client(vim.lsp.get_active_clients())
    clangd_active = false
    print("clangd désactivé")
  else
    -- Activer clangd
    lspconfig.clangd.setup({
      on_attach = function(client, bufnr)
        -- Mappages LSP spécifiques
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
      end,
    })
    clangd_active = true
    print("clangd activé")
  end
end

-- Créer une commande pour basculer clangd
vim.api.nvim_create_user_command('ToggleClangd', ToggleClangd, {})

-- Associer un raccourci pour basculer clangd
vim.api.nvim_set_keymap("n", "<leader>lc", ":ToggleClangd<CR>", { noremap = true, silent = true })

