vim.opt.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("cSharp")
require("lazyConfig")
require("mappings")

vim.opt.shiftwidth = 4
vim.opt.cindent = true

-- " enable syntax and plugins
-- syntax enable
-- filetype plugin on

vim.opt.number = true
vim.opt.relativenumber = true

-- set incsearch
vim.opt.ignorecase = true

-- " mappings
-- " search down into subfolders
-- " Provides tab-completion for all file-related tasks
-- :vim.opt.path += **
-- 
-- " Display all matching files when we tab complete
vim.opt.wildmenu = true


vim.g.moonflyCursorColor = true

-- folding options
    vim.opt.foldcolumn ="1"
    -- vim.opt.foldmethod ="indent"
--
