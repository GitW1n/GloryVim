-- Make sure Packer is loaded
vim.cmd [[packadd packer.nvim]]

-- Packer initialization
local packer = require('plugins.packer')


require('core.config')      -- General settings
require('core.keymaps')     -- Keyboard shortcuts


packer.startup(function(use)
    require('core.plugins')(use)  -- Calling the function to install plugins
end)

--vim.cmd('source ~/.config/nvim/initback.vim') -- For Linux/Macos
-- vim.cmd('source C:\\Users\\<username>\\AppData\\Local\\nvim\\initback.vim') -- For Windows (replace <username> with >

-- dashboard-nvim
require('core.dashboard').setup {
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
