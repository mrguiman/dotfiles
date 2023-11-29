local lspconfig = require("lspconfig")

lspconfig.tsserver.setup{}
lspconfig.eslint.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.ruby_ls.setup{}
lspconfig.clangd.setup{}
lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            telemetry = {
                enable = false
            },
            diagnostics = {
                globals = {
                    "vim"
                }
            }
        }
    }
}

