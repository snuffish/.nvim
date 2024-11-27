local utils = require 'utils'
local set = utils.set

return {
  vim.api.nvim_set_keymap('n', '<C-A-k>', '(zz', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<C-A-j>', ')zz', { noremap = true, silent = true }),

  set('n', '<A-j>', '}zz', { noremap = true, silent = true }),
  set('n', '<A-k>', '{zz', { noremap = true, silent = true }),

  set('nv', '<C-p>', ':', { noremap = true, desc = 'Enter command mode' }),
  set('i', '<C-p>', '<Esc>:', { noremap = true, desc = 'Enter command mode' }),

  set('n', 'rr', '<Esc>:%s/', { noremap = true, desc = 'Regex string replace' }),

  set('ni', '<C-x>', '<Esc>:', { noremap = true, silent = true }),

  set('n', { '<C-z>', '<D-z>' }, '<cmd>u<CR>', { silent = true }),
  set('i', { '<C-z>', '<D-z>' }, '<Esc>', { silent = true }),

  set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),

  set('ni', '<C-y>', '<C-r>', { noremap = true, desc = 'Redo last change' }),

  set('n', { '<C-c><C-c>', '<D-c><D-c>' }, 'yy', { noremap = true, desc = 'Copy' }),
  set('n', { '<C-v>', '<D-v>' }, 'p', { noremap = true, desc = 'Paste' }),
  set('v', { '<C-c>', '<D-c>' }, 'y', { noremap = true, desc = 'Copy' }),

  set('ni', '<C-s>', '<cmd>w<CR><Esc>', { silent = true }),

  -- Keep cursor centered when scrolling search results
  set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  set('n', '<Del>', '"_xi', { noremap = true, desc = 'Delete character under cursor' }),
  set('n', '<BS>', '"_Xi', { noremap = true, desc = 'Delete character before cursor' }),
}
