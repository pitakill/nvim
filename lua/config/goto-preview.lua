local ok, goto_preview = pcall(require, 'goto-preview')
if not ok then
  print('No goto-preview plugin found')
  return
end

goto_preview.setup {
  default_mappings = true,
}
