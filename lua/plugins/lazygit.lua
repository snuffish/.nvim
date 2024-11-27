local utils = require 'utils'
local set = utils.set

set('n', '<leader>sf', '<cmd>Telescope git_files<CR>', { noremap = true, desc = 'Git by [F]files' })
set('n', '<leader>sc', '<cmd>Telescope git_commits<CR>', { noremap = true, desc = 'Git by [C]ommits' })

return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { '<leader>gl', '<cmd>LazyGit<cr>', desc = 'Open lazy git' },
  },
}
