vim.opt.number = true -- numbers in the left column
vim.opt.encoding = "utf-8" -- utf-8 encoding
vim.opt.mouse = "a" -- enable mouse support in all modes
vim.opt.ignorecase = true -- ignore case while searching
vim.opt.gdefault = true -- replace all matches in a line by default
vim.opt.wrap = false -- do not wrap lines
vim.opt.breakindent = true -- indent wrapped lines
vim.opt.tabstop = 4 -- number of spaces a tab counts for
vim.opt.shiftwidth = 4 -- number of spaces used for each step of (auto)indent
vim.opt.softtabstop = 4 -- tbh idk
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.autoindent = true -- copy indent from current line when starting a new line
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.termguicolors = true -- terminal colors
vim.opt.list = true -- show non-printable characters
vim.opt.listchars = { tab = ">  " } -- set only tabs to be shown

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("filetype plugin on")
