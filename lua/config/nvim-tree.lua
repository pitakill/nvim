local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then
  print('No nvim-tree plugin found')
  return
end

nvim_tree.setup {
  view = {
    side = 'right',
  }
}
