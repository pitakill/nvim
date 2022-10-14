local M = {}

local function highlight(client)
  local ok, illuminate = pcall(require, 'illuminate')
  if not ok then
    print('No illuminate plugin found')
    return
  end
  illuminate.on_attach(client)
end

local function keymaps(bufnr)
  local set = vim.keymap.set
  local opts = { noremap = true, silent = true, }
  local opts_with_buffer = { noremap = true, silent = true, buffer = bufnr }
  local mode = 'n'

  -- diagnostic
  set(mode, '<leader>e', vim.diagnostic.open_float, opts_with_buffer)
  set(mode, '[d', vim.diagnostic.goto_prev, opts_with_buffer)
  set(mode, ']d', vim.diagnostic.goto_next, opts_with_buffer)
  set(mode, '<leader>q', vim.diagnostic.setloclist, opts_with_buffer)
  -- lsp
  set(mode, 'gD', vim.lsp.buf.declaration, opts_with_buffer)
  set(mode, 'gd', vim.lsp.buf.definition, opts_with_buffer)
  set(mode, '<leader>gd', ':vsplit | lua vim.lsp.buf.definition()<cr>', opts_with_buffer)
  set(mode, '<leader><leader>gd', ':split | lua vim.lsp.buf.definition()<cr>', opts_with_buffer)
  set(mode, 'K', vim.lsp.buf.hover, opts_with_buffer)
  set(mode, 'gi', vim.lsp.buf.implementation, opts_with_buffer)
  set(mode, '<C-k>', vim.lsp.buf.signature_help, opts_with_buffer)
  set(mode, '<leader>wa', vim.lsp.buf.add_workspace_folder, opts_with_buffer)
  set(mode, '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts_with_buffer)
  set(mode, '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts_with_buffer)
  set(mode, '<leader>D', vim.lsp.buf.type_definition, opts_with_buffer)
  set(mode, '<leader>rn', vim.lsp.buf.rename, opts_with_buffer)
  set(mode, '<leader>ca', vim.lsp.buf.code_action, opts_with_buffer)
  set(mode, 'gr', vim.lsp.buf.references, opts_with_buffer)
  set(mode, '<leader>f', vim.lsp.buf.format, opts_with_buffer)
  -- gitsign
  vim.api.nvim_buf_set_keymap(bufnr, mode, '<leader>tgb', '<cmd>Gitsign toggle_current_line_blame<cr>',
    opts)
end

M.setup = function()
  local signs = {
    Error = '',
    Warn = '',
    Hint = '',
    Info = ''
  }

  for name, text in pairs(signs) do
    local hl = 'DiagnosticSign' .. name
    vim.fn.sign_define(hl, { text = text, texthl = hl, numhl = hl })
  end
end

M.on_attach = function(client, bufnr)
  if client.name == 'tsserver' then
    client.server_capabilities.documentFormattingProvider = false
  end

  highlight(client)
  keymaps(bufnr)

end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not ok then
  print('No cmp_nvim_lsp plugin found')
  return
end

M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)
-- M.capabilities.textDocument.completion.completionItem.snippetSupport = true

return M
