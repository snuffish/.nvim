local builtin = require 'telescope.builtin'
local utils = require '../utils'
local set = utils.set

return {
  --set('n', '<C-A-Up>', '5kzz', { noremap = true, silent = true }),
  --set('n', '<C-A-Down>', '5jzz', { noremap = true, silent = true }),

  vim.api.nvim_set_keymap('n', '<C-A-Down>', ')zz', { noremap = true, silent = true }),
  vim.api.nvim_set_keymap('n', '<C-A-Up>', '(zz', { noremap = true, silent = true }),

  set('n', '<A-Down>', '}zz', { noremap = true, silent = true }),
  set('n', '<A-Up>', '{zz', { noremap = true, silent = true }),

  set('nivc', 'QQ', utils.clear_cmd_line, { noremap = true, desc = 'Quit' }),
  set('niv', '<C-p>', '<Esc>:', { noremap = true, desc = 'Enter command mode' }),

  set('n', 'rr', '<Esc>:%s/', { noremap = true, desc = 'Regex string replace' }),

  set('ni', '<C-x>', '<Esc>:', { noremap = true, silent = true }),

  set('n', '<leader>so', ':source Fummlar runt in-the-dark$MYVIMRC', { silent = true }),

  --set('n', '<A-Down>', '<C-d>zz', { silent = true }),
  --
  --set('n', '<A-Up>', '<C-u>zz', { silent = true }),

  set('n', { '<C-z>', '<D-z>' }, '<cmd>u<CR>', { silent = true }),
  set('i', { '<C-z>', '<D-z>' }, '<Esc>', { silent = true }),

  set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),
  set('i', { '<C-c>', '<C-q>' }, '<Esc>', { noremap = true, desc = 'Exit insert mode' }),

  set('ni', '<C-y>', '<C-r><NL>', { noremap = true, desc = 'Redo last change' }),

  set('n', { '<C-c><C-c>', '<D-c><D-c>' }, 'yy', { noremap = true, desc = 'Copy' }),
  set('n', { '<C-v>', '<D-v>' }, 'p', { noremap = true, desc = 'Paste' }),
  set('v', { '<C-c>', '<D-c>' }, 'y', { noremap = true, desc = 'Copy' }),

  set('ni', '<C-s>', '<cmd>w<CR><Esc>', { silent = true }),

  set('n', '<C-q>', '<cmd>q<CR>', { silent = true, desc = 'Quit' }),
  set('n', '<C-q><Left>', '<cmd>Explore<CR>', { silent = true, desc = 'Quit to explorer' }),

  -- Keep cursor centered when scrolling search results
  set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  set('n', '<Del>', '"_xi', { noremap = true, desc = 'Delete character under cursor' }),
  set('n', '<BS>', '"_Xi', { noremap = true, desc = 'Delete character before cursor' }),

  -- Jump on line
  set('n', '<A-Right>', '$', { noremap = true, desc = 'Jump to end of line' }),
  set('n', '<A-Left>', '^', { noremap = true, desc = 'Jump to start of line' }),

  -- Select all
  set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

  -- Visual mode selections with Shift + Arrow keys
  set('n', '<S-Up>', 'v<Up>', { desc = 'Select line above' }),
  set('n', '<S-Down>', 'v<Down>', { desc = 'Select line below' }),
  set('n', '<S-Left>', 'v<Left>', { desc = 'Select character left' }),
  set('n', '<S-Right>', 'v<Right>', { desc = 'Select character right' }),

--  Continue visual mode selection with Shift + Arrow keys
  set('v', '<S-Up>', '<Up>', { desc = 'Extend selection up' }),
  set('v', '<S-Down>', '<Down>', { desc = 'Extend selection down' }),
  set('v', '<S-Left>', '<Left>', { desc = 'Extend selection left' }),
  set('v', '<S-Right>', '<Right>', { desc = 'Extend selection right' }),

--  Visual line mode for whole line selection
  set('n', '<S-Home>', 'V', { desc = 'Enter line selection mode' }),

  -- set('n', '<CR>', 'o', { desc = 'New line in insert mode' }),
  -- set('n', 's<CR>', 'i', { desc = 'New line above in insert mode' }),
}
