vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "Makefile" },
  callback = function()
    vim.opt_local.expandtab = false
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.lua" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = '*',
  callback = function()
    vim.lsp.buf.format()
  end
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.js", "*.ts", "*.tsx", "*.jsx", "*.vue", "*.html", "*.css" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end
})
