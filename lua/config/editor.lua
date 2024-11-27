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
  lineCursor = '#292E42',
  lineNr = '#BB9AF7',
}

local MODE = {
  NORMAL = 0,
  INSERT = 1,
  VISUAL = 2,
}

vim.api.nvim_set_hl(MODE.NORMAL, 'CursorLineNr', { reverse = true, bold = true, fg = NORMAL.lineNr })
vim.api.nvim_set_hl(MODE.NORMAL, 'CursorLine', { bg = NORMAL.lineCursor })

vim.api.nvim_set_hl(MODE.INSERT, 'CursorLine', { bg = INSERT.lineCursor })
vim.api.nvim_set_hl(MODE.INSERT, 'CursorLineNr', { reverse = true, bold = true, fg = INSERT.lineNr })

vim.api.nvim_set_hl(MODE.VISUAL, 'CursorLine', { bg = VISUAL.lineCursor })
vim.api.nvim_set_hl(MODE.VISUAL, 'CursorLineNr', { reverse = true, bold = true, fg = VISUAL.lineNr })

local setCurrentMode = function(mode)
  vim.api.nvim_set_hl_ns(mode)
end

vim.api.nvim_create_autocmd('ModeChanged', {
  callback = function()
    local mode = vim.fn.mode()
    if mode == 'v' or mode == 'V' then
      setCurrentMode(MODE.VISUAL)
    elseif mode == 'i' then
      setCurrentMode(MODE.INSERT)
    else
      setCurrentMode(MODE.NORMAL)
    end
  end,
})

vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    vim.cmd 'w'
  end,
})

return {
  set('n', '<C-a>', 'ggVG', { desc = 'Select all' }),
  set('n', '<CR>k', 'O<Esc>j', { noremap = true, desc = 'Add blank-line above cursor' }),
  set('n', { '<CR>j', '<CR><CR>' }, 'o<Esc><k>', { noremap = true, desc = 'Add blank-line below cursor' }),

  -- Jump in editor
  set('n', '<PageUp>', '<C-u>zz', { desc = 'Jump up 1/2-screen' }),
  set('n', '<PageDown>', '<C-d>zz', { desc = 'Jump down 1/2-screen' }),

  -- Visual mode selections with Shift + Arrow keys
  set('n', '<S-k>', 'Vk', { desc = 'Select line above' }),
  set('n', '<S-j>', 'Vj', { desc = 'Select line below' }),
  set('n', '<S-h>', 'vh', { desc = 'Select character left' }),
  set('n', '<S-l>', 'vl', { desc = 'Select character right' }),

  -- Continue visual mode selection
  set('v', '<S-k>', 'k', { desc = 'Extend selection up' }),
  set('v', '<S-j>', 'j', { desc = 'Extend selection down' }),
  set('v', '<S-h>', 'h', { desc = 'Extend selection left' }),
  set('v', '<S-l>', 'l', { desc = 'Extend selection left' }),

  -- Both visual mode & normal mode compatible
  set('nv', '<A-k>', '{zz', { silent = true, desc = 'Jump up 1 paragraph {}' }),
  set('nv', '<A-j>', '}zz', { silent = true, desc = 'Jump down 1 paragraph {}' }),
  set('nv', '<A-l>', ')zz', { desc = 'Jump 1 sentence forward' }),
  set('nv', '<A-h>', '(zz', { desc = 'Jump 1 sentence backward' }),

  set('n', '<C-k>', 'VdkP', { noremap = true, silent = true }),
  set('n', '<C-j>', 'VdjP', { noremap = true, silent = true }),

  set('v', '<C-k>', ":m '<-2<CR>gv=gv'", { silent = true, desc = 'Move lines up' }),
  set('v', '<C-j>', ":m '>+1<CR>gv=gv'", { silent = true, desc = 'Move line down' }),
}
