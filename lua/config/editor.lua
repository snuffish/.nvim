local utils = require 'utils'
local set = utils.set

local defaultColor = '#292E42'
local insertModeColor = '#505b8b'

local enableInsertModeColor = function(enabled)
  vim.cmd('highlight CursorLine guibg=' .. (enabled and insertModeColor or defaultColor))
end

vim.api.nvim_create_autocmd('InsertEnter', {
  callback = function()
    enableInsertModeColor(true)
  end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    enableInsertModeColor(false)
  end,
})

return {
  set('n', '<C-a>', 'ggVG', { desc = 'Select all' }),
  set('n', '<CR><Up>', 'O<Esc><Down>', { noremap = true, desc = 'Add blank-line above cursor' }),
  set('n', { '<CR><CR>', '<CR><Down>' }, 'o<Esc><Up>', { noremap = true, desc = 'Add blank-line below cursor' }),

  -- Jump in editor
  set('n', '<PageUp>', '<C-u>zz', { desc = 'Jump up 1/2-screen' }),
  set('n', '<PageDown>', '<C-d>zz', { desc = 'Jump down 1/2-screen' }),

  -- Visual mode selections with Shift + Arrow keys
  set('n', '<S-Up>', 'V<Up>', { desc = 'Select line above' }),
  set('n', '<S-Down>', 'V<Down>', { desc = 'Select line below' }),
  set('n', '<S-Left>', 'v<Left>', { desc = 'Select character left' }),
  set('n', '<S-Right>', 'v<Right>', { desc = 'Select character right' }),

  -- Continue visual mode selection
  set('v', '<S-Up>', '<Up>', { desc = 'Extend selection up' }),
  set('v', '<S-Down>', '<Down>', { desc = 'Extend selection down' }),
  set('v', '<S-Left>', '<Left>', { desc = 'Extend selection left' }),

  -- Both visual mode & normal mode compatible
  set('nv', '<A-Up>', '{zz', { silent = true, desc = 'Jump up 1 paragraph {}' }),
  set('nv', '<A-Down>', '}zz', { silent = true, desc = 'Jump down 1 paragraph {}' }),
  set('nv', '<A-Right>', '$', { desc = 'Jump to end of line' }),
  set('nv', '<A-Left>', '^', { desc = 'Jump to start of line' }),

  -- vim.api.nvim_set_keymap('n', '<C-A-Down>', ')zz', { noremap = true, silent = true }),
  -- vim.api.nvim_set_keymap('n', '<C-A-Up>', '(zz', { noremap = true, silent = true }),

  -- set('n', '<CR><CR>', 'o<Esc>', { desc = 'Toggle visual-line' }),
  -- set('n', '<CR><CR>', function()
  --   if newLine == false then
  --     print 'FIRST'
  --     vim.cmd 'normal! o'
  --   end
  --   newLine = true
  -- end, { noremap = true, desc = 'Toggle visual-line' }),
  --
  -- set('n', '<CR>', function()
  --   print 'SIMPLE-CR'
  --   if newLine then
  --     print 'AFTER'
  --     vim.cmd 'normal! o'
  --   end
  -- end, { noremap = true, desc = 'Toggle visual-line' }),

  -- set('n', '<CR><CR>', function()
  --   print 'Shift + Enter pressed' -- Debugging line
  --   vim.cmd 'normal! o' -- New blank line below
  --   -- Add your additional action here
  -- end, { desc = 'New blank line below and additional action' }),

  -- Word-wise visual selections
  -- set('n', '<S-w>', 'vw', { desc = 'Select word forward' }),
  -- set('n', '<S-W>', 'vW', { desc = 'Select WORD forward' }),
  -- set('n', '<S-e>', 've', { desc = 'Select to end of word' }),
  -- set('n', '<S-E>', 'vE', { desc = 'Select to end of WORD' }),
  -- set('n', '<S-b>', 'vb', { desc = 'Select word backward' }),
  -- set('n', '<S-B>', 'vB', { desc = 'Select WORD backward' }),

  -- Continue word-wise visual selections
  -- set('v', '<S-w>', 'w', { desc = 'Extend selection word forward' }),
  -- set('v', '<S-W>', 'W', { desc = 'Extend selection WORD forward' }),
  -- set('v', '<S-e>', 'e', { desc = 'Extend selection to word end' }),
  -- set('v', '<S-E>', 'E', { desc = 'Extend selection to WORD end' }),
  -- set('v', '<S-b>', 'b', { desc = 'Extend selection word backward' }),
  -- set('v', '<S-B>', 'B', { desc = 'Extend selection WORD backward' }),
}
