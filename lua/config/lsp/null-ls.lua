local ok, null_ls = pcall(require, 'null-ls')
if not ok then
  print('No null-ls plugin found')
  return
end

null_ls.setup {
  sources = {
    -- formatting
    null_ls.builtins.formatting.eslint_d.with {
      condition = function(utils)
        return utils.root_has_file { ".eslintrc" }
      end,
    },
    -- null_ls.builtins.formatting.codespell,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.prettier.with {
      condition = function(utils)
        return utils.root_has_file { ".prettierrc" }
      end,
    },
    null_ls.builtins.formatting.jq,
    -- diagnostics
    null_ls.builtins.diagnostics.codespell,
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.diagnostics.buf,
    -- completion
    null_ls.builtins.completion.spell,
  },
}
