-- core/keymaps.lua

-- Клавиатурные сочетания
local set_keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Пример горячих клавиш
set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', options) -- Поиск файлов с Telescope
set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)        -- Открыть/закрыть NvimTree

