local empty_line_group = vim.api.nvim_create_augroup('EmptyLine', { clear = true })

return {
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = '[S]earch [F]iles' }),
    vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' }),
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' }),


    vim.keymap.set('n', '<leader>so', ':source $MYVIMRC', { silent = true }),
    vim.keymap.set('n', '<A-Right>', '<End>', { noremap = true }),
    vim.keymap.set('n', '<A-Left>', '<Home>', { noremap = true }),
    vim.keymap.set('n', 'O', 'o<Esc>', { noremap = true }),

    vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true }),
    vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true }),

    vim.keymap.set('n', '<C-Down>', '<C-d>zz', { silent = true }),
    vim.keymap.set('n', '<C-Up>', '<C-u>zz', { silent = true }),

    vim.keymap.set('n', 'O', 'o', { noremap = true }),
    --vim.keymap.set("n", "U", "<C-R>", { desc = "Redo last change" });

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
