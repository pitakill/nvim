local ok, bgwinch = pcall(require, 'bgwinch')
if not ok then
  print('No bgwinch plugin found')
  return
end

bgwinch.setup {}
