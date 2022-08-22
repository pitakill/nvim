local ok, image = pcall(require, 'image')
if not ok then
  print('No image plugin found')
  return
end

image.setup {}
