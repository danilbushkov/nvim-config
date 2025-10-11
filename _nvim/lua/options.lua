local g = vim.g
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


opt.listchars = { tab = ">~", space = "·" }
opt.list = true

opt.clipboard = "unnamedplus"


opt.scrolloff = 7

g.mapleader = " "
