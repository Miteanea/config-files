vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("cSharp")
require("lazyConfig")
require("mappings")

vim.opt.shell= "C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe"

vim.opt.shiftwidth = 4
vim.opt.cindent = true

-- " enable syntax and plugins
-- syntax enable
-- filetype plugin on

vim.opt.number = true
vim.opt.relativenumber = true

-- set incsearch
vim.opt.ignorecase = true

vim.opt.shell='powershell'

-- " mappings
-- " search down into subfolders
-- " Provides tab-completion for all file-related tasks
-- :vim.opt.path += **
-- 
-- " Display all matching files when we tab complete
vim.opt.wildmenu = true
