-- Configuration de Telescope
return function()
  local telescope = require("telescope")

  -- Configurer Telescope
  telescope.setup({
    defaults = {
      prompt_prefix = "🔍 ",
      selection_caret = "❯ ",
      layout_strategy = "horizontal",
      layout_config = {
        width = 0.75,
        height = 0.8,
      },
      sorting_strategy = "ascending",
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      file_ignore_patterns = { "node_modules", ".git", "*.jpg", "*.png" },
    },
  })
  -- Mappages de touches avec 'vim.keymap.set'
  vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { noremap = true, silent = true })
  vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { noremap = true, silent = true })
end

