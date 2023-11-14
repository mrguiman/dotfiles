local lsp = require('lsp-zero').preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'ruby_ls',
    'clangd'
})
-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()

lsp.setup()
