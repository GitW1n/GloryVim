-- core/keymaps.lua

-- Hotkeys
local set_keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Пример горячих клавиш
set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', options) -- Search with Telescope
set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)        -- Open/Close NvimTree

