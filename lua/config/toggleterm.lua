local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then
  print('No toggleterm plugin found')
end

toggleterm.setup {
  direction = 'float',
}
