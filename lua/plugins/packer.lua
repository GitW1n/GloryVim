-- lua/plugins/packer.lua

-- Make sure packer is installed
local function ensure_packer()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      'git',
      'clone',
      '--depth', '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path
    })
    vim.cmd 'packadd packer.nvim'
    return require('packer') -- Возвращаем сам объект Packer
  end
  return require('packer') -- Возвращаем объект Packer, если он уже установлен
end

local packer = ensure_packer() -- Получаем объект Packer

-- Настройка Packer
packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer может управлять собой

  -- Плагины
  use 'hrsh7th/nvim-cmp'                  -- Автодополнение
  use 'hrsh7th/cmp-nvim-lsp'              -- Источник для nvim-lsp
  use 'hrsh7th/cmp-vsnip'                 -- Источник для сниппетов
  use 'onsails/lspkind-nvim'               -- Иконки для LSP
  use 'nvim-lua/plenary.nvim'             -- Утилиты Lua
  use 'nvim-treesitter/nvim-treesitter'   -- Подсветка синтаксиса
  use 'nvim-tree/nvim-tree.lua'           -- Файловый менеджер
  use 'nvim-lualine/lualine.nvim'         -- Строка состояния
  use 'nvim-telescope/telescope.nvim'     -- Поиск по файлам
