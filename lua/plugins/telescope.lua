local builtin = require 'telescope.builtin'
local utils = require 'utils'
local set = utils.set

return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  -- stylua: ignore
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    require('telescope').load_extension 'noice'

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- See `:help telescope.builtin`
    set('ni', '<F1>', '<cmd>Lazy<CR>', { desc = 'Open Lazy' })
    set('n', '<leader>`', '<cmd>Telescope buffers<CR>', {
        noremap = true,
        silent = true
    })

    set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
    set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
    set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
    set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })

    set('n', { '<A-`>', '<leader><leader>`' }, '<C-6>', { noremap = true, silent = true, desc = 'Alternate file' })
    set('n', { '<leader>sf', '<C-o>' }, builtin.find_files, { noremap = true, desc = '[S]earch [F]iles' })
    set('n', { '<leader>sg', '<C-_>', '<C-g>' }, builtin.live_grep, { noremap = true, desc = '[S]earch by [G]rep' })
    set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
    set('n', '<leader>sl', builtin.lsp_references, { desc = '[S]earch [L]SP References' })

    set('n', '<leader>/', function()
      -- You can pass additional configuration to Telescope to change the theme, layout, etc.
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = '[/] Fuzzily search in current buffer' })

    -- It's also possible to pass additional configuration options.
    --  See `:help telescope.builtin.live_grep()` for information about particular keys
    set('n', '<leader>s/', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = '[S]earch [/] in Open Files' })

    -- Shortcut for searching your Neovim configuration files
    set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end, { desc = '[S]earch [N]eovim files' })
  end,
}
