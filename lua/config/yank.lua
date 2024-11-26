local utils = require 'utils'
local set = utils.set

vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy '+',
    ['*'] = require('vim.ui.clipboard.osc52').copy '*',
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste '+',
    ['*'] = require('vim.ui.clipboard.osc52').paste '*',
  },
}

-- I want this "cy" keymap to work to yank the current line to the system clipboard
vim.api.nvim_set_keymap('v', '<C-y>', '"+y', { noremap = true, desc = 'Yank to system clipboard' })

-- set('n', 'cy', '"*c', { noremap = true, desc = 'Previous search result (centered)' })

return {}
