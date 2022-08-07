local ok, nvim_surround = pcall(require, 'nvim-surround')
if not ok then
  print('No nvim-surround plugin found')
  return
end

nvim_surround.setup {}
