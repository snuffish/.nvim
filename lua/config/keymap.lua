local utils = require '../utils'
local builtin = require 'telescope.builtin'

return {

  utils.set('n', '<leader>`', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true }),
  utils.set('n', '<A-`>', '<C-6>', { noremap = true, silent = true, desc = 'Alternate file' }),
  --set('n', '<C-A-Up>', '5kzz', { noremap = true, silent = true }),
  --set('n', '<C-A-Down>', '5jzz', { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<C-A-Down>', ')zz', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<C-A-Up>', '(zz', { noremap = true, silent = true }),

  utils.set('n', '<A-Down>', '}zz', { noremap = true, silent = true }),
  utils.set('n', '<A-Up>', '{zz', { noremap = true, silent = true }),

  utils.set('n', 'lg', '<cmd>LazyGit<CR>', { noremap = true, desc = 'lazygit' }),

  --set('ivc', 'QQ', utils.clear_cmd_line, { noremap = true, desc = 'Exit mode' }),
  utils.set('nivc', 'QQ', utils.clear_cmd_line, { noremap = true, desc = 'Quit' }),
  utils.set('niv', '<C-p>', '<Esc>:', { noremap = true, desc = 'Enter command mode' }),

  utils.set('n', 'rr', '<Esc>:%s/', { noremap = true, desc = 'Regex string replace' }),

  utils.set('ni', '<C-l>', '<cmd>Lazy<CR>', { desc = 'Open Lazy' }),
  utils.set('ni', '<C-x>', '<Esc>:', { noremap = true, silent = true }),

  utils.set('n', { '<leader>sf', '<C-o>' }, builtin.find_files, { noremap = true, desc = '[S]earch [F]iles' }),
  utils.set('n', { '<leader>sg', '<C-_>', '<C-g>' }, builtin.live_grep, { noremap = true, desc = '[S]earch by [G]rep' }),
  utils.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' }),

  utils.set('n', '<leader>so', ':source Fummlar runt in-the-dark$MYVIMRC', { silent = true }),

  --set('n', '<A-Down>', '<C-d>zz', { silent = true }),
  --
  --set('n', '<A-Up>', '<C-u>zz', { silent = true }),

  utils.set('n', { '<C-z>', '<D-z>' }, '<cmd>u<CR>', { silent = true }),
  utils.set('i', { '<C-z>', '<D-z>' }, '<Esc>', { silent = true }),

  utils.set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),
  utils.set('i', { '<C-c>', '<C-q>' }, '<Esc>', { noremap = true, desc = 'Exit insert mode' }),

  utils.set('ni', '<C-y>', '<C-r><NL>', { noremap = true, desc = 'Redo last change' }),

  utils.set('n', { '<C-c><C-c>', '<D-c><D-c>' }, 'yy', { noremap = true, desc = 'Copy' }),
  utils.set('n', { '<C-v>', '<D-v>' }, 'p', { noremap = true, desc = 'Paste' }),
  utils.set('v', { '<C-c>', '<D-c>' }, 'y', { noremap = true, desc = 'Copy' }),

  utils.set('ni', '<C-s>', '<cmd>w<CR><Esc>', { silent = true }),

  utils.set('n', '<C-q>', '<cmd>q<CR>', { silent = true, desc = 'Quit' }),
  utils.set('n', '<C-q><Left>', '<cmd>Explore<CR>', { silent = true, desc = 'Quit to explorer' }),

  -- Keep cursor centered when scrolling search results
  utils.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  utils.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  utils.set('n', '<Del>', '"_xi', { noremap = true, desc = 'Delete character under cursor' }),
  utils.set('n', '<BS>', '"_Xi', { noremap = true, desc = 'Delete character before cursor' }),

  -- Jump on line
  utils.set('n', '<A-Right>', '$', { noremap = true, desc = 'Jump to end of line' }),
  utils.set('n', '<A-Left>', '^', { noremap = true, desc = 'Jump to start of line' }),

  -- Select all
  utils.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

  -- Window navigation
  utils.set('n', '<leader><Up>', '<C-w><Up>', { noremap = true, desc = 'Goto Window up' }),
  utils.set('n', '<leader><Down>', '<C-w><Down>', { noremap = true, desc = 'Goto Window down' }),
  utils.set('n', '<leader><Left>', '<C-w><Left>', { noremap = true, desc = 'Goto Window left' }),
  utils.set('n', '<leader><Right>', '<C-w><Right>', { noremap = true, desc = 'Goto Window right' }),

  utils.set('n', '<leader><leader>m', '<leader>sm', { noremap = true, desc = 'Toggle maximize window' }),
  utils.set('n', '<leader><leader><Down>', '<C-w>s', { noremap = true, desc = 'Split window down/horizontal' }),
  utils.set('n', '<leader><leader><Right>', '<C-w>v', { noremap = true, desc = 'Split window right/vertical' }),

  -- Font size adjustment
  utils.set('n', '<C-=>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { desc = 'Increase font size' }),
  utils.set('n', '<C-->', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { desc = 'Decrease font size' }),
  utils.set('n', '<C-0>', '<cmd>lua vim.g.neovide_scale_factor = 1.0<CR>', { desc = 'Reset font size' }),

  -- set('n', '<CR>', 'o', { desc = 'New line in insert mode' }),
  -- set('n', 's<CR>', 'i', { desc = 'New line above in insert mode' }),

  -- Visual mode selections with Shift + Arrow keys
  utils.set('n', '<S-Up>', 'v<Up>', { desc = 'Select line above' }),
  utils.set('n', '<S-Down>', 'v<Down>', { desc = 'Select line below' }),
  utils.set('n', '<S-Left>', 'v<Left>', { desc = 'Select character left' }),
  utils.set('n', '<S-Right>', 'v<Right>', { desc = 'Select character right' }),

  -- Continue visual mode selection with Shift + Arrow keys
  utils.set('v', '<S-Up>', '<Up>', { desc = 'Extend selection up' }),
  utils.set('v', '<S-Down>', '<Down>', { desc = 'Extend selection down' }),
  utils.set('v', '<S-Left>', '<Left>', { desc = 'Extend selection left' }),
  utils.set('v', '<S-Right>', '<Right>', { desc = 'Extend selection right' }),

  -- Visual line mode for whole line selection
  utils.set('n', '<S-Home>', 'V', { desc = 'Enter line selection mode' }),
}
