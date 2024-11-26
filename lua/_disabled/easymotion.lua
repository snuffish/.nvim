-- https://github.com/easymotion/vim-easymotion
local utils = require 'utils'

vim.api.nvim_set_keymap('n', '<Leader><Leader>s', '<Plug>(easymotion-overwin-f)', {})
--vim.api.nvim_set_keymap('n', '<leader>s', '<Plug>(easymotion-overwin-f)', {})
vim.api.nvim_set_keymap('n', '<Leader><Leader>q', '<Plug>(easymotion-overwin-line)', {})
--utils.set('n', '<leader>w', '<Plug>(easymotion-2)', { noremap = true, desc = 'Search for word' })

return {
  'easymotion/vim-easymotion',
}
