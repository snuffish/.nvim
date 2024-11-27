vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = 'solarized',
  callback = function()
    vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
      fg = '#555555',
      ctermfg = 8,
      force = true,
    })
  end,
})

return {
  'github/copilot.vim',
}
