local nvim_lsp = require 'lspconfig'

nvim_lsp.rnix.setup {
  cmd = { 'rnix-lsp' },
  filetypes = { 'nix' },
}
