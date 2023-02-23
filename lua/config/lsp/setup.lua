local lspconfig = require 'lspconfig'

local servers = {
  'bufls',
  'gopls',
  'tsserver',
  'svelte',
  'html',
  -- 'sumneko_lua',
  'golangci_lint_ls',
}

for _, server in pairs(servers) do
  local opts = {
    on_attach = require 'config.lsp.handlers'.on_attach,
    capabilities = require 'config.lsp.handlers'.capabilities,
  }

  local has_custom_opts, custom_opts = pcall(require, 'config.lsp.settings.' .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend('force', opts, custom_opts)
  end

  lspconfig[server].setup(opts)
end
