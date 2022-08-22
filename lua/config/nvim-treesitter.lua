local ok, configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  print('No nvim-treesitter plugin found')
  return
end

configs.setup {
  autotag = {
    enable = true
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
