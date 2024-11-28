local utils = require 'utils'
local set = utils.set

return {

  set('n', '<A-j>', '}zz', { noremap = true, silent = true }),
  set('n', '<A-k>', '{zz', { noremap = true, silent = true }),

  set('nv', '<C-p>', ':', { noremap = true, desc = 'Enter command mode' }),
  set('i', '<C-p>', '<Esc>:', { noremap = true, desc = 'Enter command mode' }),

  set('n', 'R', '<Esc>:%s/', { noremap = true, desc = 'Regex string replace' }),

  set('ni', '<C-y>', '<C-r>', { noremap = true, desc = 'Redo last change' }),

  set('ni', '<C-s>', '<cmd>w<CR><Esc>', { silent = true }),

  -- Keep cursor centered when scrolling search results
  set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  -- vim.api.nvim_set_keymap('n', '<C-A-k>', '(zz', { noremap = true, silent = true }),
  -- vim.api.nvim_set_keymap('n', '<C-A-j>', ')zz', { noremap = true, silent = true }),

  -- set('n', { '<C-z>', '<D-z>' }, '<cmd>u<CR>', { silent = true }),
  -- set('n', '<Del>', '"_xi', { noremap = true, desc = 'Delete character under cursor' }),
  -- set('n', '<BS>', '"_Xi', { noremap = true, desc = 'Delete character before cursor' }),
}
