local nvim_lsp = require 'lspconfig'

local on_attach = function(client, bufnr) end

nvim_lsp.omnisharp.setup {
  cmd = { 'OmniSharp' },
  on_attach = on_attach,
}
