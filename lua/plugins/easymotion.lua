-- https://github.com/easymotion/vim-easymotion

vim.api.nvim_set_keymap('n', '<Leader><Leader>s', '<Plug>(easymotion-overwin-f)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>q', '<Plug>(easymotion-overwin-line)', {})
-- set('n', '<leader>w', '<Plug>(easymotion-2)', { noremap = true, desc = 'Search for word' }),

return {
  'easymotion/vim-easymotion',
}
