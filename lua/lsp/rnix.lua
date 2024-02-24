local nvim_lsp = require 'lspconfig'

nvim_lsp.rnix.setup {
  cmd = { '/run/current-system/sw/bin/rnix-lsp' },
  filetypes = { 'nix' },
}
