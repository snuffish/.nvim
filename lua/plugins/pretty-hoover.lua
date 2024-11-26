local utils = require 'utils'

utils.set('vinc', '<F1><F1>', function()
  require('pretty_hover').hover()
end, { noremap = true, desc = 'Show definition info' })

return {
  'Fildo7525/pretty_hover',
  event = 'LspAttach',
  opts = {
    header = {
      detect = { '[\\@]class' },
      styler = '###',
    },
    line = {
      detect = { '[\\@]brief' },
      styler = '**',
    },
    border = 'rounded',
  },
}
