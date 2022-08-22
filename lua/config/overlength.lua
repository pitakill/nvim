local ok, overlength = pcall(require, 'overlength')
if not ok then
  print('No overlength plugin found')
  return
end

overlength.setup {
  bg = '#e9e8e2',
  disable_ft = { 'qf', 'help', 'man', 'packer', 'NvimTree', 'Telescope', 'WhichKey', 'terminal' },
}
