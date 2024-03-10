local nvim_lsp = require 'lspconfig'

nvim_lsp.rnix.setup {
  cmd = { 'zls' },
  filetypes = { 'zig' },
}
