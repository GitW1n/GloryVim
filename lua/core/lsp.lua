local lspconfig = require('lspconfig')

--Python (pyright)
lspconfig.pyright.setup {}

-- JavaScript/TypeScript (ts_ls)
lspconfig.ts_ls.setup {}

-- Lua (lua_ls)
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}, --  'vim' is a global variable
            },
        },
    },
}

-- Other languages

