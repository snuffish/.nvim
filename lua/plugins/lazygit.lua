local utils = require 'utils'
local set = utils.set

-- set('n', '<leader>sf', '<cmd>Telescope git_files<CR>', { noremap = true, desc = 'Git by [F]files' })
-- set('n', '<leader>sc', '<cmd>Telescope git_commits<CR>', { noremap = true, desc = 'Git by [C]ommits' })

return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>gl', '<cmd>LazyGit<cr>', desc = 'Open lazy git' },
    { '<leader>sf', '<cmd>Telescope git_files<CR>', desc = 'Git by [F]files' },
    { '<leader>sc', '<cmd>Telescope git_commits<CR>', desc = 'Git by [C]ommits' },
  },
}
