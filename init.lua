-- Убедитесь, что Packer загружен
vim.cmd [[packadd packer.nvim]]

-- Инициализация Packer
local packer = require('plugins.packer')

-- Загрузка основных настроек
require('core.config')      -- Общие настройки
require('core.keymaps')     -- Клавиатурные сочетания

-- Установка плагинов
packer.startup(function(use)
    require('core.plugins')(use)  -- Вызываем функцию для установки плагинов
end)

-- Настройка dashboard-nvim
require('core.dashboard').setup {
    theme = 'hyper',  -- Опционально: выбираем тему
    config = {
        header = {
            [[░██████╗░██╗░░░░░░█████╗░██████╗░██╗░░░██╗██╗░░░██╗██╗███╗░░░███╗]],
            [[██╔════╝░██║░░░░░██╔══██╗██╔══██╗╚██╗░██╔╝██║░░░██║██║████╗░████║]],
            [[██║░░██╗░██║░░░░░██║░░██║██████╔╝░╚████╔╝░╚██╗░██╔╝██║██╔████╔██║]],
            [[██║░░╚██╗██║░░░░░██║░░██║██╔══██╗░░╚██╔╝░░░╚████╔╝░██║██║╚██╔╝██║]],
            [[╚██████╔╝███████╗╚█████╔╝██║░░██║░░░██║░░░░░╚██╔╝░░██║██║░╚═╝░██║]],
            [[░╚═════╝░╚══════╝░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝]],
        },
        center = {
            {icon = '  ', desc = 'Recently opened files  ', action = 'Telescope oldfiles', key = 'r'},
            {icon = '  ', desc = 'Find file              ', action = 'Telescope find_files', key = 'f'},
            {icon = '  ', desc = 'Find text              ', action = 'Telescope live_grep', key = 'g'},
            {icon = '  ', desc = 'Open configuration      ', action = 'edit ~/.config/nvim/init.lua', key = 'c'},
            {icon = '  ', desc = 'Exit                   ', action = 'exit', key = 'q'},
        },
        footer = {"Neovim - GloryVim"},
    }
}
