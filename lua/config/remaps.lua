local utils = require 'utils'
local set = utils.set

return {
  set('nv', '<S-W>', 'B', { noremap = true, desc = 'Remap W to B' }),
  set('nv', '<S-E>', 'b', { noremap = true, desc = 'Remap E to b' }),
}
