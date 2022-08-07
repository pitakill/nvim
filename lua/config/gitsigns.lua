local ok, gitsigns = pcall(require, 'gitsigns')
if not ok then
  print('No gitsigns plugin found')
  return
end

gitsigns.setup {}
