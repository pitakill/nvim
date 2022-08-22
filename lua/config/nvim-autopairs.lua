local ok, autopairs = pcall(require, 'nvim-autopairs')
if not ok then
  print('No nvim-autopairs plugin found')
  return
end

autopairs.setup{}
