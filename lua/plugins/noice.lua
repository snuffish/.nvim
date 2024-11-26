return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {},
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  keys = function()
    vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice Message' })
    vim.keymap.set('n', '<leader>nt', '<cmd>Telescope noice<CR>', { desc = 'Show telescope noice' })
  end,
}
