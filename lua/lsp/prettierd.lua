local nvim_lsp = require 'lspconfig'

nvim_lsp.prettierd.setup {
  cmd = { 'prettierd' },
  filetypes = { 'js' },
}
