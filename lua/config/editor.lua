local utils = require '../utils'
local set = utils.set

return {
    -- Select all
    set('n', '<C-a>', 'gg<S-v>G', { desc = 'Select all' }),

    -- Visual mode selections with Shift + Arrow keys
    set('n', '<S-Up>', 'v<Up>', { desc = 'Select line above' }),
    set('n', '<S-Down>', 'v<Down>', { desc = 'Select line below' }),
    set('n', '<S-Left>', 'v<Left>', { desc = 'Select character left' }),
    set('n', '<S-Right>', 'v<Right>', { desc = 'Select character right' }),

    -- Word-wise visual selections
    set('n', '<S-w>', 'vw', { desc = 'Select word forward' }),
    set('n', '<S-W>', 'vW', { desc = 'Select WORD forward' }),
    set('n', '<S-e>', 've', { desc = 'Select to end of word' }),
    set('n', '<S-E>', 'vE', { desc = 'Select to end of WORD' }),
    set('n', '<S-b>', 'vb', { desc = 'Select word backward' }),
    set('n', '<S-B>', 'vB', { desc = 'Select WORD backward' }),

    -- Continue visual mode selection
    set('v', '<S-Up>', '<Up>', { desc = 'Extend selection up' }),
    set('v', '<S-Down>', '<Down>', { desc = 'Extend selection down' }),
    set('v', '<S-Left>', '<Left>', { desc = 'Extend selection left' }),
    set('v', '<S-Right>', '<Right>', { desc = 'Extend selection right' }),

    -- Continue word-wise visual selections
    set('v', '<S-w>', 'w', { desc = 'Extend selection word forward' }),
    set('v', '<S-W>', 'W', { desc = 'Extend selection WORD forward' }),
    set('v', '<S-e>', 'e', { desc = 'Extend selection to word end' }),
    set('v', '<S-E>', 'E', { desc = 'Extend selection to WORD end' }),
    set('v', '<S-b>', 'b', { desc = 'Extend selection word backward' }),
    set('v', '<S-B>', 'B', { desc = 'Extend selection WORD backward' }),

    -- Visual line mode for whole line selection
    set('n', '<S-Home>', 'V', { desc = 'Enter line selection mode' }),

    -- set('n', '<CR>', 'o', { desc = 'New line in insert mode' }),
    -- set('n', 's<CR>', 'i', { desc = 'New line above in insert mode' }),
}
