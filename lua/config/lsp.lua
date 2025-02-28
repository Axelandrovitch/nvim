local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Capabilities pour la complétion
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Configuration générique pour les serveurs LSP
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        -- Mappages LSP génériques
        local opts = { noremap = true, silent = true, buffer = bufnr }
        
        -- Navigation
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, opts)
        
        -- Information et aide
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>k", vim.lsp.buf.signature_help, opts)
        
        -- Refactoring et actions
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        
        -- Diagnostics
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
      end
    })
  end
})

-- Configuration spécifique pour certains serveurs si nécessaire
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
