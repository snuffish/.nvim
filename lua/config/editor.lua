local utils = require 'utils'
local set = utils.set

local NORMAL = {
  lineCursor = '#292E42',
  lineNr = '#7AA2F7',
}

local INSERT = {
  lineNr = '#9ECE6A',
  lineCursor = '#505b8b',
}

local VISUAL = {
  lineNr = '#BB9AF7',
}

local MODE = {
  NORMAL = 0,
  INSERT = 1,
  VISUAL = 2,
}

vim.api.nvim_set_hl(MODE.NORMAL, 'CursorLine', { bg = NORMAL.lineCursor })
vim.api.nvim_set_hl(MODE.NORMAL, 'CursorLineNr', { reverse = true, bold = true, fg = NORMAL.lineNr })

vim.api.nvim_set_hl(MODE.INSERT, 'CursorLineNr', { reverse = true, bold = true, fg = INSERT.lineNr })
vim.api.nvim_set_hl(MODE.INSERT, 'CursorLine', { bg = INSERT.lineCursor })

vim.api.nvim_set_hl(MODE.VISUAL, 'CursorLineNr', { reverse = true, bold = true, fg = VISUAL.lineNr })

local setCurrentMode = function(mode)
  vim.api.nvim_set_hl_ns(mode)
end

setCurrentMode(MODE.NORMAL)

vim.api.nvim_create_autocmd('ModeChanged', {
  callback = function()
    local mode = vim.fn.mode()
    if mode == 'v' or mode == 'V' then
      setCurrentMode(MODE.VISUAL)
    elseif mode == 'i' then
      setCurrentMode(MODE.INSERT)
    end

    setCurrentMode(MODE.NORMAL)
  end,
})

return {
  set('n', '<C-a>', 'ggVG', { desc = 'Select all' }),
  set('n', '<CR><Up>', 'O<Esc><Down>', { noremap = true, desc = 'Add blank-line above cursor' }),
  set('n', { '<CR><Down>', '<CR><CR>' }, 'o<Esc><Up>', { noremap = true, desc = 'Add blank-line below cursor' }),

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

  set('n', '<C-Up>', 'VdkP', { noremap = true, silent = true }),
  set('n', '<C-Down>', 'VdjP', { noremap = true, silent = true }),

  set('v', '<Up>', ":m '<-2<CR>gv=gv'", { silent = true, desc = 'Move lines up' }),
  set('v', '<Down>', ":m '>+1<CR>gv=gv'", { silent = true, desc = 'Move line down' }),
}
