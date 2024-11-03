local lspconfig = require('lspconfig')

-- Настройка для языкового сервера Python (pyright)
lspconfig.pyright.setup {}

-- Настройка для языкового сервера JavaScript/TypeScript (ts_ls)
lspconfig.ts_ls.setup {}

-- Настройка для языкового сервера Lua (lua_ls)
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}, -- Добавьте 'vim' как глобальную переменную
            },
        },
    },
}

-- Добавьте другие языковые серверы по мере необходимости

