local ok, null_ls = pcall(require, 'null-ls')
if not ok then
  print('No null-ls plugin found')
  return
end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
  },
}
