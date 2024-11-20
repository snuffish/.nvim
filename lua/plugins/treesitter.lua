-- There are additional nvim-treesitter modules that you can use to interact
-- with nvim-treesitter. You should go explore a few and see what interests you:
--
--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects

return {
    'nvim-treesitter/nvim-treesitter',
    event = {'BufReadPre', 'BufNewFile'},
    build = ':TSUpdate',
    dependencies = {'windwp/nvim-ts-autotag'},
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require 'nvim-treesitter.configs'

        -- configure treesitter
        treesitter.setup { -- enable syntax highlighting
            highlight = {
                enable = true
            },
            -- enable indentation
            indent = {
                enable = true
            },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true
            },
            -- ensure these language parsers are installed
            ensure_installed = {
              'bash',
              'c',
              'diff',
              'html',
              'lua',
              'luadoc',
              'markdown',
              'markdown_inline',
              'query',
              'vim',
              'vimdoc',
              'javascript',
              'typescript',
              'python',
              'rust',
              'go',
              'cpp',
              'css',
              'json',
              'yaml',
              'toml',
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<C-space>',
                    node_incremental = '<C-space>',
                    scope_incremental = false,
                    node_decremental = '<bs>'
                }
            }
        }
    end
}
