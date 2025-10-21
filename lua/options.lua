-- options
vim.opt.syntax = "on"

-- 鼠标、高亮设置
vim.opt.mouse = 'a'
vim.opt.selection = "exclusive"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true

-- 缩进设置
vim.opt.autoindent = true
-- vim.opt.cindent = true
-- vim.opt.cinkeys = "0{,0},0),:,0#,!^F,o,O,e"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.showmode = false

-- 搜索设置
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 回车修复
vim.opt.compatible = false
vim.opt.backspace = {"indent", "eol", "start"}

-- fittencode
vim.opt.updatetime = 1000

-- 懒得调的
vim.cmd([[
colorscheme monokai

" 换行设置
set wrap
set linebreak
set wrapmargin=2
set scrolloff=10

" 状态
set laststatus=2
set ruler
filetype indent on

" 行高亮
" 加上这个b会导致打出256会被转义
" set t_co=256
highlight CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

" 设置光标样式
set guicursor=i:block-iCursor-blinkon0,v:block-vCursor

" utf-8
set encoding=utf-8
]])
