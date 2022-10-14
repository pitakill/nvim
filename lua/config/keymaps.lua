local set = vim.keymap.set
local opts_with_buffer = { noremap = true, silent = true }
local mode = 'n'

-- Telescope
set(mode, '<leader>ff', '<cmd>Telescope find_files<cr>', opts_with_buffer)
set(mode, '<leader>lg', '<cmd>Telescope live_grep<cr>', opts_with_buffer)
-- Gitsigns
set(mode, '<leader>tclb', '<cmd>Gitsigns toggle_current_line_blame<cr>', opts_with_buffer)
