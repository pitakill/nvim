local set = vim.keymap.set
local opts_with_buffer = { noremap = true, silent = true, buffer = 0 }
local mode = 'n'

-- Telescope
set(mode, '<leader>ff', '<cmd>Telescope find_files<cr>', opts_with_buffer)
