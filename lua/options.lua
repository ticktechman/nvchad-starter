require "nvchad.options"

-- add yours here!
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

--------------------
-- base options
--------------------
opt.mouse = ""
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.ignorecase = true
opt.whichwrap = "<,>"
opt.clipboard = "" -- reset clipboard

g.mapleader = ","

g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/snippets"

-- goto last postion
cmd [[au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif]]

-- toggle quickfix window borrowed from lvim
cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
