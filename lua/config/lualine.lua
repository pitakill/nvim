local ok, lualine = pcall(require, 'lualine')
if not ok then
  print('No lualine plugin found')
  return
end

lualine.setup {}
