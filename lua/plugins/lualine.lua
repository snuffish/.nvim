local function getWordsV2()
    local wc = vim.fn.wordcount()
    if wc["visual_words"] then -- text is selected in visual mode
        return wc["visual_words"] .. " Words/" .. wc['visual_chars'] .. " Chars (Vis)"
    else -- all of the document
        return wc["words"] .. "w"
    end
end
-- Show directory tree depth
local function file_tree_depth()
  local path = vim.fn.expand('%:p:h')
  local count = select(2, string.gsub(path, '/', ''))
  return string.format('󰉋 %d', count)
end

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',
                component_separators = {
                    left = '|',
                    right = '|'
                },
                section_separators = {
                    left = '',
                    right = ''
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {file_tree_depth, 'filename'},
                lualine_x = {'encoding', 'filetype'},
                lualine_y = {'progress', getWordsV2},
                lualine_z = {'location'}
            }
        })
    end
}