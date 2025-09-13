-- LSP
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
                globals = {'vim'}, --  global var
            },
        },
    },
}

-- Rust (rust_analyzer)
lspconfig.rust_analyzer.setup {}

-- Other languages

