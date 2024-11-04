-- core/plugins.lua

-- Автоматическая установка Packer, если он отсутствует
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end

    return false
end

local packer_bootstrap = ensure_packer()

return function(use)  -- Убедитесь, что функция возвращается
    use 'wbthomason/packer.nvim' -- сам Packer

    -- Интерфейсные плагины
    use { 'nvim-tree/nvim-tree.lua', config = [[require('plugins.nvimtree')]] }
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }, config = [[require('plugins.telescope')]] }
    use { 'nvim-lualine/lualine.nvim', config = [[require('plugins.lualine')]] }
   -- use 'hrsh7th/vim-vsnip'  -- Сниппеты для nvim-cmp
   -- use 'hrsh7th/cmp-vsnip'  -- Источник для cmp, поддерживающий vsnip

    -- Плагины для работы с кодом
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = [[require('plugins.treesitter')]] }
    use { 'neovim/nvim-lspconfig', config = [[require('core.lsp')]] }
    use 'glepnir/dashboard-nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end

require('dashboard').setup {
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
