local utils = require 'utils'
local set = utils.set

return {
  -- Window navigation
  set('n', '<leader><Up>', '<C-w><Up>', { noremap = true, desc = 'Goto Window up' }),
  set('n', '<leader><Down>', '<C-w><Down>', { noremap = true, desc = 'Goto Window down' }),
  set('n', '<leader><Left>', '<C-w><Left>', { noremap = true, desc = 'Goto Window left' }),
  set('n', '<leader><Right>', '<C-w><Right>', { noremap = true, desc = 'Goto Window right' }),

  set('n', '<leader><leader>m', '<leader>m', { noremap = true, desc = 'Toggle maximize window' }),
  set('n', '<leader><leader><Down>', '<C-w>s', { noremap = true, desc = 'Split window down/horizontal' }),
  set('n', '<leader><leader><Right>', '<C-w>v', { noremap = true, desc = 'Split window right/vertical' }),

  -- Font size adjustment
  set('n', '<C-.>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { desc = 'Increase font size' }),
  set('n', '<C-,>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { desc = 'Decrease font size' }),
  set('n', '<C-0>', '<cmd>lua vim.g.neovide_scale_factor = 1.0<CR>', { desc = 'Reset font size' }),
}
