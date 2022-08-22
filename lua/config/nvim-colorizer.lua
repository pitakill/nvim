local ok, nvim_colorizer = pcall(require, 'colorizer')
if not ok then
  print('No nvim-colorizer plugin found')
  return
end

nvim_colorizer.setup {}
