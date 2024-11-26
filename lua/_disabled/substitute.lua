local utils = require 'utils'
local set = utils.set

return {
  'gbprod/substitute.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local substitute = require 'substitute'

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    set('n', 's', substitute.operator, { desc = 'Substitute with motion' })
    set('n', 'ss', substitute.line, { desc = 'Substitute line' })
    set('n', 'S', substitute.eol, { desc = 'Substitute to end of line' })
    set('x', 's', substitute.visual, { desc = 'Substitute in visual mode' })
  end,
}
