local nvim_lsp = require 'lspconfig'

nvim_lsp.zls.setup {
  cmd = { 'zls' },
  filetypes = { 'zig' },
}
