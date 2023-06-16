local opt = vim.opt

opt.number = true
opt.relativenumber = true


opt.ignorecase = true
opt.showmatch = true

opt.shiftwidth = 4
opt.tabstop = 4
opt.smarttab = true
opt.expandtab = true
opt.smartindent = true


opt.listchars = { tab = ">~", space = "·"}
opt.list = true

opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {"Makefile"},
  callback = function() 
    vim.opt_local.expandtab = false
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {"*.lua"},
  callback = function() 
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})


