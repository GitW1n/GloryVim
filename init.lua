-- Make sure Packer is loaded
vim.cmd [[packadd packer.nvim]]

local packer = require('plugins.packer')

require('core.config')      -- General settings
require('core.keymaps')     -- Keyboard shortcuts


packer.startup(function(use)
    require('core.plugins')(use)
end)

--vim.cmd('source ~/.config/nvim/init.vim') -- For Linux/Macos(Optional)
-- vim.cmd('source C:\\Users\\<username>\\AppData\\Local\\nvim\\init.vim') -- For Windows (replace <username> with your username) (Optional)

-- dashboard-nvim
require('core.dashboard').setup {
    theme = 'hyper',
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
            {icon = '  ', desc = 'Recently opened files  ', action = 'Telescope old_files', key = 'r'}, 
            {icon = '  ', desc = 'Find file              ', action = 'Telescope find_files', key = 'f'},
            {icon = '  ', desc = 'Find text              ', action = 'Telescope live_grep', key = 'g'},
            {icon = '  ', desc = 'Open configuration      ', action = 'edit ~/.config/nvim/init.lua', key = 'c'},
            {icon = '  ', desc = 'Exit                   ', action = 'exit', key = 'q'},
        },
        footer = {"Neovim - GloryVim"},
    }
}
