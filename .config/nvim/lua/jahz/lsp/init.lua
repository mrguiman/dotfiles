require("mason").setup()

require("jahz.lsp.config")
require("jahz.lsp.keymaps")

vim.diagnostic.config({
  virtual_text = false, -- Turn off inline diagnostics
})

-- LSP Floating Window Style
local _border = "single"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)

vim.diagnostic.config{
  float={border=_border}
}
