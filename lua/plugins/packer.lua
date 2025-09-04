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
    return require('packer') -- Returning the Packer object itself
  end
  return require('packer') -- Return the Packer object if it is already installed
end

local packer = ensure_packer() -- Getting the Packer object

-- Настройка Packer
packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Плагины
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-telescope/telescope.nvim'
end)
