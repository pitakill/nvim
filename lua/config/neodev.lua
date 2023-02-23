local ok, neodev = pcall(require, 'neodev')
if not ok then
  print('No neodev plugin found')
  return
end

neodev.setup {}
