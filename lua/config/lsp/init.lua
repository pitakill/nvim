local ok, _ = pcall(require, 'lspconfig')
if not ok then
  print('No lspconfig plugin found')
  return
end

require 'config.lsp.handlers'.setup()
require'config.lsp.setup'
