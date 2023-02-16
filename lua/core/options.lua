
--// BASIC CONFIG \\--

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.mouse='a'
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.fileencoding='utf-8'
vim.opt.clipboard = 'unnamedplus'

vim.cmd([[
colorscheme nord
if has('termguicolors')
   set termguicolors
endif
    set background=dark
let g:everforest_better_performance = 1
let g:everforest_background = 'soft'

set shell=powershell
set shellcmdflag=-command
set shellquote=\"
set shellxquote=
]])
