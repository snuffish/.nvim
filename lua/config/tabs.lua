local utils = require '../utils'
local set = utils.set

set('n', '<C-t>n', '<cmd>tabnew<CR>', { noremap = true, desc = 'New tab' })
set('n', '<C-t><Right>', '<cmd>:tabnext<CR>', { noremap = true, desc = 'Next tab' })
set('n', '<C-t><Left>', '<cmd>:tabprevious<CR>', { noremap = true, desc = 'Previous tab' })

for i = 1, 9, 1 do
  set('n', '<C-t>' .. i, '<cmd>:tabnext ' .. i .. '<CR>', { noremap = true, desc = 'Goto tab ' .. i })
end
