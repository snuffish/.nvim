local builtin = require 'telescope.builtin'

local function set_keymaps(modes, maps, action, opts)
  modes = type(modes) == 'string' and { modes } or modes
  maps = type(maps) == 'string' and { maps } or maps

  for _, mode in ipairs(modes) do
    for _, map in ipairs(maps) do
      vim.keymap.set(mode, map, action, opts)
    end
  end
end

return {
  set_keymaps({ 'n', 'i' }, '<C-x>', '<Esc>:', { silent = true }),

  set_keymaps('n', { '<leader>sf', '<c-p>' }, builtin.find_files, { desc = '[S]earch [F]iles' }),
  set_keymaps('n', { '<leader>sg', '<c-_>' }, builtin.live_grep, { desc = '[S]earch by [G]rep' }),
  vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' }),

  vim.keymap.set('n', '<leader>so', ':source $MYVIMRC', { silent = true }),
  vim.keymap.set('n', '<A-Right>', '<End>', { noremap = true }),
  vim.keymap.set('n', '<A-Left>', '<Home>', { noremap = true }),

  vim.keymap.set('n', '<A-Down>', '<C-d>zz', { silent = true }),
  vim.keymap.set('n', '<A-Up>', '<C-u>zz', { silent = true }),

  set_keymaps({ 'n', 'i' }, '<C-z>', '<cmd>u<CR>', { silent = true }),

  vim.keymap.set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),
  vim.keymap.set('i', '<C-c>', '<Esc>', { noremap = true, desc = 'Exit insert mode' }),
  vim.keymap.set('i', '<C-q>', '<Esc>', { noremap = true, desc = 'Exit insert mode' }),

  set_keymaps({ 'n', 'i' }, '<C-y>', "<C-r>", { noremap = true, desc = "Redo last change" }),

  vim.keymap.set("n", "<C-v>", "p", { noremap = true, desc = "Paste" }),

  set_keymaps({ 'n', 'i' }, '<C-s>', '<cmd>w<CR>', { silent = true }),

  vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', { silent = true, desc = 'Quit' }),

  -- Keep cursor centered when scrolling search results
  vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  vim.keymap.set('n', '<Del>', '"_x', { noremap = true, desc = 'Delete character under cursor' }),
  vim.keymap.set('n', '<BS>', '"_X', { noremap = true, desc = 'Delete character before cursor' }),

  -- Select all
  vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

  -- Window navigation
  vim.keymap.set('n', '<leader><Up>', '<C-w><Up>', { noremap = true }),
  vim.keymap.set('n', '<leader><Down>', '<C-w><Down>', { noremap = true }),
  vim.keymap.set('n', '<leader><Left>', '<C-w><Left>', { noremap = true }),
  vim.keymap.set('n', '<leader><Right>', '<C-w><Right>', { noremap = true }),

  vim.keymap.set('n', '<leader><leader><Down>', '<C-w>s', { noremap = true }),
  vim.keymap.set('n', '<leader><leader><Right>', '<C-w>v', { noremap = true }),
}
