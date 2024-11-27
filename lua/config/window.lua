local utils = require 'utils'
local set = utils.set

return {
  -- Window navigation
  set('n', '<leader>k', '<C-w>k', { noremap = true, desc = 'Goto Window up' }),
  set('n', '<leader>j', '<C-w>j', { noremap = true, desc = 'Goto Window down' }),
  set('n', '<leader>h', '<C-w>h', { noremap = true, desc = 'Goto Window left' }),
  set('n', '<leader>l', '<C-w>l', { noremap = true, desc = 'Goto Window right' }),

  set('n', '<leader><leader>m', '<leader>m', { noremap = true, desc = 'Toggle maximize window' }),
  set('n', '<leader><leader>j', '<C-w>s', { noremap = true, desc = 'Split window down/horizontal' }),
  set('n', '<leader><leader>l', '<C-w>v', { noremap = true, desc = 'Split window right/vertical' }),

  -- Font size adjustment
  set('n', '<C-.>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { desc = 'Increase font size' }),
  set('n', '<C-,>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { desc = 'Decrease font size' }),
  set('n', '<C-0>', '<cmd>lua vim.g.neovide_scale_factor = 1.0<CR>', { desc = 'Reset font size' }),
}
