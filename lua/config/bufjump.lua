local ok, bufjump = pcall(require, 'bufjump')
if not ok then
  print('No bufjump plugin found')
  return
end

bufjump.setup {}
