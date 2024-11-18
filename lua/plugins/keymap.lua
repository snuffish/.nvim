local builtin = require 'telescope.builtin'
local empty_line_group = vim.api.nvim_create_augroup('EmptyLine', { clear = true })

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
  vim.keymap.set('n', '<C-x>', ':', { silent = true }),
  vim.keymap.set('i', '<C-x>', '<Esc>:', { silent = true }),

  set_keymaps('n', { '<leader>sf', '<c-p>' }, builtin.find_files, { desc = '[S]earch [F]iles' }),
  set_keymaps('n', { '<leader>sg', '<c-_>' }, builtin.live_grep, { desc = '[S]earch by [G]rep' }),
  vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' }),

  vim.keymap.set('n', '<leader>so', ':source $MYVIMRC', { silent = true }),
  vim.keymap.set('n', '<A-Right>', '<End>', { noremap = true }),
  vim.keymap.set('n', '<A-Left>', '<Home>', { noremap = true }),
  vim.keymap.set('n', 'O', 'o<Esc>', { noremap = true }),
  
  vim.keymap.set('n', '<A-Down>', '<C-d>zz', { silent = true }),
  vim.keymap.set('n', '<A-Up>', '<C-u>zz', { silent = true }),

  set_keymaps({ 'n', 'i' }, { '<C-z>' }, '<cmd>u<CR>', { silent = true }),

  vim.keymap.set('n', '<C-c>', 'i', { noremap = true, desc = 'Enter insert mode' }),
  vim.keymap.set('i', '<C-c>', '<Esc>', { noremap = true, desc = 'Exit insert mode' }),
  vim.keymap.set('i', '<C-q>', '<Esc>', { noremap = true, desc = 'Exit insert mode' }),
  
  vim.keymap.set("n", "<C-y>", "<C-r>", { noremap = true, desc = "Redo last change" }),
  vim.keymap.set("i", "<C-y>", "<C-r>", { noremap = true, desc = "Redo last change" }),

  vim.keymap.set("n", "<C-v>", "p", { noremap = true, desc = "Paste" }),

  vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { silent = true }),
  vim.keymap.set('i', '<C-s>', '<cmd>w<CR>', { silent = true }),

  vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', { silent = true, desc = 'Quit' }),

  -- Keep cursor centered when scrolling search results
  vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next search result (centered)' }),
  vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search result (centered)' }),

  vim.keymap.set('n', '<Del>', '"_x', { noremap = true, desc = 'Delete character under cursor' }),
  vim.keymap.set('n', '<BS>', '"_X', { noremap = true, desc = 'Delete character before cursor' }),

   -- Select all
   vim.keymap.set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

  -- vim.api.nvim_create_autocmd('InsertEnter', {
  --     group = empty_line_group,
  --     callback = function();
  --     vim.b.line_was_empty = vim.api.nvim_get_current_line():match('^%s*$');
  --     -- Store both line and column position
  --     local r, c = unpack(vim.api.nvim_win_get_cursor(0));
  --     vim.b.last_row = r
  --     vim.b.last_col = c
  --     end,
  -- });

  -- vim.api.nvim_create_autocmd('InsertLeave', {
  --     group = empty_line_group,
  --     callback = function();
  --     if vim.b.line_was_empty and vim.api.nvim_get_current_line():match('^%s*$') then
  --         vim.api.nvim_del_current_line();
  --         vim.api.nvim_win_set_cursor(0, { vim.b.last_row, vim.b.last_col });
  --     end
  --     end,
  -- });
}