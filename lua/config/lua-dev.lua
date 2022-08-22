local ok, lua_dev = pcall(require, 'lua-dev')
if not ok then
  print('No lua-dev plugin found')
  return
end

lua_dev.setup {}
