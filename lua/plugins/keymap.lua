
local builtin = require 'telescope.builtin'

local function set(modes, maps, action, opts)
  modes = type(modes) == 'string' and { modes } or modes
  maps = type(maps) == 'string' and { maps } or maps

  for _, mode in ipairs(modes) do
    for _, map in ipairs(maps) do
      vim.keymap.set(mode, map, action, opts)
    end
  end
end

return {
  set({ 'n', 'i' }, '<C-x>', '<Esc>:', { silent = true }),

  set('n', { '<leader>sf', '<c-p>' }, builtin.find_files, { desc = '[S]earch [F]iles' }),
  set('n', { '<leader>sg', '<c-_>' }, builtin.live_grep, { desc = '[S]earch by [G]rep' }),
  set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' }),

  set('n', '<leader>so', ':source $MYVIMRC', { silent = true }),

  set('n', '<A-Down>', '<C-d>zz', { silent = true }),
  set('n', '<A-Up>', '<C-u>zz', { silent = true }),

  set('n', '<C-z>', '<cmd>u<CR>', { silent = true }),
  set('i', '<C-z>', '<Esc>', { silent = true }),

  set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),
  set('i', { '<C-c>', '<C-q>' }, '<Esc>', { noremap = true, desc = 'Exit insert mode' }),

  set({ 'n', 'i' }, '<C-y>', "<C-r><NL>", { noremap = true, desc = "Redo last change" }),

  set("n", "<C-c><C-c>", "yy", { noremap = true, desc = "Copy" }),
  set("n", "<C-v>", "p", { noremap = true, desc = "Paste" }),

  set({ 'n', 'i' }, '<C-s>', '<cmd>w<CR><Esc>', { silent = true }),

  set('n', '<C-q>', '<cmd>q<CR>', { silent = true, desc = 'Quit' }),
  set('n', '<C-q><Left>', '<cmd>Explore<CR>', { silent = true, desc = 'Quit to explorer' }),

  -- Keep cursor centered when scrolling search results
  set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  set('n', '<Del>', '"_xi', { noremap = true, desc = 'Delete character under cursor' }),
  set('n', '<BS>', '"_Xi', { noremap = true, desc = 'Delete character before cursor' }),

  -- Jump on line
  set('n', '<A-Right>', '$', { noremap = true, desc = 'Jump to end of line' }),
  set('n', '<A-Left>', '^', { noremap = true, desc = 'Jump to start of line' }),

  -- Select all
  set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

  -- Window navigation
  set('n', '<leader><Up>', '<C-w><Up>', { noremap = true, desc = 'Goto Window up' }),
  set('n', '<leader><Down>', '<C-w><Down>', { noremap = true, desc = 'Goto Window down' }),
  set('n', '<leader><Left>', '<C-w><Left>', { noremap = true, desc = 'Goto Window left' }),
  set('n', '<leader><Right>', '<C-w><Right>', { noremap = true, desc = 'Goto Window right' }),
  
  set('n', '<leader><leader>m', '<leader>sm', { noremap = true, desc = 'Toggle maximize window' }),
  set('n', '<leader><leader><Down>', '<C-w>s', { noremap = true, desc = 'Split window down/horizontal' }),
  set('n', '<leader><leader><Right>', '<C-w>v', { noremap = true, desc = 'Split window right/vertical' }),

  -- Font size adjustment
  set('n', '<C-=>', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { desc = 'Increase font size' }),
  set('n', '<C-->', '<cmd>lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { desc = 'Decrease font size' }),
  set('n', '<C-0>', '<cmd>lua vim.g.neovide_scale_factor = 1.0<CR>', { desc = 'Reset font size' }),

  set('n', '<CR>', 'o', { desc = 'New line in insert mode' }),
  set('n', 's<CR>', 'i', { desc = 'New line above in insert mode' }),
}
