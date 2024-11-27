local utils = require 'utils'
local set = utils.set

for i = 1, 9, 1 do
  set('n', '<leader>' .. i, '<cmd>tabnext ' .. i .. '<CR>', { desc = 'Goto tab ' .. i })
end

return {
  set('n', { '<C-t>n', '<leader>tn' }, '<cmd>tabnew<CR>', { noremap = true, desc = 'New tab' }),
  set('n', { '<C-t>l', '<leader>tl' }, '<cmd>tabnext<CR>', { noremap = true, desc = 'Next tab' }),
  set('n', { '<C-t>h', '<leader>th' }, '<cmd>tabprevious<CR>', { noremap = true, desc = 'Previous tab' }),
}
