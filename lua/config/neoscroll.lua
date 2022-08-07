local ok, neoscroll = pcall(require, 'neoscroll')
if not ok then
  print('No neoscroll plugin found')
  return
end

neoscroll.setup {}
