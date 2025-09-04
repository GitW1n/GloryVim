-- core/plugins.lua

-- Packer autoinstall
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

return function(use)
    use 'wbthomason/packer.nvim' -- Packer

    -- Интерфейсные плагины
    use { 'nvim-tree/nvim-tree.lua', config = [[require('plugins.nvimtree')]] }
    use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }, config = [[require('plugins.telescope')]] }
    use { 'nvim-lualine/lualine.nvim', config = [[require('plugins.lualine')]] }
   -- use 'hrsh7th/vim-vsnip'  -- snippets for nvim-cmp
   -- use 'hrsh7th/cmp-vsnip'  -- source for cmp(supports vsnip)

    -- plugins for code
    use { 
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate', 
    config = function()
        require('plugins.treesitter')
    end
}

    use { 'neovim/nvim-lspconfig', config = [[require('core.lsp')]] }
    use 'glepnir/dashboard-nvim'

    if packer_bootstrap then
        require('packer').sync()
    end


require('dashboard').setup {
    theme = 'hyper',  -- theme
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
end