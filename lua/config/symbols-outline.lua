local ok, symbols_outline = pcall(require, 'symbols-outline')
if not ok then
  print('No symbols-outline plugin found')
  return
end

symbols_outline.setup()

