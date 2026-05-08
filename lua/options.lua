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
vim.opt.list = true
vim.opt.listchars = {
  space = "·",      -- 将空格显示为中间点
  -- 可以同时设置其他不可见字符
  tab = "> ",       -- 制表符显示为 "> "
  trail = "-",      -- 行尾空格显示为 "-"
  extends = ">",    -- 超出屏幕右侧的文本显示为 ">"
  precedes = "<",   -- 超出屏幕左侧的文本显示为 "<"
}

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

-- 禁用特殊字符的转义显示
vim.opt.display:append("uhex")  -- 只在必要时显示十六进制

-- Scroll Lines
vim.opt.scrolloff = 8
-- 有bug()
-- vim.api.nvim_create_autocmd({ "CursorMoved" }, {
--   callback = function()
--     -- 仅在普通缓冲区中生效（排除终端等）
--     if vim.bo.buftype ~= "" then
--       return
--     end
--
--     local window_lines = vim.api.nvim_win_get_height(0)
--     local current_line = vim.fn.line(".")
--     local last_line = vim.fn.line("$")
--     local scrolloff_value = vim.o.scrolloff
--
--     -- 计算从光标到文件底部理论上需要保留的行数
--     local margin_bottom = current_line + scrolloff_value - last_line
--
--     -- 如果光标距离底部不足 scrolloff 设定的行数
--     if margin_bottom >= 0 then
--       -- 先将当前行对齐到窗口底部
--       vim.api.nvim_input("zb")
--       -- 再向下滚动额外的行数，以创建留白
--       vim.api.nvim_input(margin_bottom .. "<C-E>")
--     end
--   end,
-- })

-- 懒得调的
vim.cmd([[
colorscheme monokai

" 换行设置
set wrap
set linebreak
set wrapmargin=2

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
