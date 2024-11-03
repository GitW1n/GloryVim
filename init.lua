-- init.lua

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

