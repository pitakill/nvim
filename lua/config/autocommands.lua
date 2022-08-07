local group = vim.api.nvim_create_augroup('pitakill', { clear = true })

-- Investigate how to setup correctly lualine when change the background
--[[ vim.api.nvim_create_autocmd('BufAdd', {
  callback = function()
    local output = os.execute('macosxtheme')
    local theme = 'dark'
    if output == 0 then
      theme = 'light'
    end
    vim.o.background = theme
  end,
  group = group,
}) ]]

vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.lsp.buf.formatting()
  end,
  group = group,
})
