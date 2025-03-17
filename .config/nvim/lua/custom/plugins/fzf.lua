return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.keymap.set('n', '<leader>sf', ':FzfLua files<CR>', { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>sg', ':FzfLua live_grep_native<CR>', { desc = '[S]earch [G]rep' })
    vim.keymap.set('n', '<leader>sr', ':FzfLua lsp_references<CR>', { desc = '[S]earch LSP [R]eferences' })
    vim.keymap.set('n', '<leader>sv', ':FzfLua grep_visual<CR>', { desc = '[S]earch [V]isual selection' })
    vim.keymap.set('n', '<leader>sm', ':FzfLua marks<CR>', { desc = '[S]earch [M]arks' })
    vim.keymap.set('n', '<leader>sb', ':FzfLua builtin<CR>', { desc = '[S]earch [B]uilt-in commands' })
    vim.keymap.set('n', '<leader>D', ':FzfLua lsp_definitions<CR>', { desc = 'Search [D]efinitions' })
  end,
}
