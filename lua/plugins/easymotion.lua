-- https://github.com/easymotion/vim-easymotion
local utils = require '../utils'
local set = utils.set

set('n', 'f', '<Plug>(easymotion-overwin-f)', { noremap = true, desc = 'Search for word' })

vim.api.nvim_set_keymap('n', '<Leader><Leader>q', '<Plug>(easymotion-overwin-line)', {})

return {
  'easymotion/vim-easymotion',
}
