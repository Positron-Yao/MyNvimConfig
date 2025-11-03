-- map function
local map = vim.keymap.set
local opts = {
    noremap = true,
    silent = true
}

-- lsp迁移
map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'gk', vim.lsp.buf.hover, opts)
map('n', 'gi', vim.lsp.buf.implementation, opts)
map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
map('n', '<space>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
map('n', '<space>D', vim.lsp.buf.type_definition, opts)
map('n', '<space>rn', vim.lsp.buf.rename, opts)
map('n', '<space>ca', vim.lsp.buf.code_action, opts)
map('n', 'gr', vim.lsp.buf.references, opts)
map('n', '<space>f', function() vim.lsp.buf.format { async = true } end, opts)

-- terminal设置
-- 结果有ToggleTerm用了，不赖
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', {noremap = true})
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', {noremap = true})
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', {noremap = true})
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', {noremap = true})
-- map('n', '<leader>t', ':split | terminal<CR>:resize 9<CR>a', {noremap = true})
map('n', '<C-\\><C-\\>', ':ToggleTerm<CR>', {noremap = true})
map('n', '<C-\\>f', ':ToggleTerm direction=float<CR>', {noremap = true})
map('n', '<C-\\>h', ':ToggleTerm direction=horizontal<CR>', {noremap = true})
map('n', '<C-\\>v', ':ToggleTerm direction=vertical<CR>', {noremap = true})
map('t', '<C-\\><C-\\>', '<C-\\><C-n>:ToggleTerm<CR>', {noremap = true})

-- BufferLine设置
map({"n", "i"}, "<C-h>", "<Esc>:BufferLineCyclePrev<CR>", opts)
map({"n", "i"}, "<C-l>", "<Esc>:BufferLineCycleNext<CR>", opts)
map("n", "<leader>o", ":BufferLineCloseOthers<CR>", opts)

-- Code-Runner
map('n', '<leader>r', ':RunCode<CR>', opts)
map('n', '<leader>c', ':RunClose<CR>', opts)

-- makefile
map("n", "<leader>m ", ":w<CR>:make ", opts)
map("n", "<leader>mm", ":w<CR>:make<CR>", opts)
map("n", "<leader>mc", ":w<CR>:make clean<CR>", opts)
map("n", "<leader>mr", ":w<CR>:make run<CR>", opts)
map("n", "<leader>mf", ":w<CR>:make format<CR>", opts)
map("n", "<leader>md", ":w<CR>:make debug<CR>", opts)
map("n", "<leader>mb", ":w<CR>:make build<CR>", opts)

-- justfile
map("n", "<leader>j ", ":w<CR>:MyJustArg ", opts)
map("n", "<leader>jj", ":w<CR>:MyJustArg<CR>", opts)
map("n", "<leader>ja", ":w<CR>:MyJustArg all<CR>", opts)
map("n", "<leader>jc", ":w<CR>:MyJustArg clean<CR>", opts)
map("n", "<leader>jr", ":w<CR>:MyJustArg run<CR>", opts)
map("n", "<leader>jf", ":w<CR>:MyJustArg format<CR>", opts)
map("n", "<leader>jd", ":w<CR>:MyJustArg debug<CR>", opts)
map("n", "<leader>jb", ":w<CR>:MyJustArg build<CR>", opts)
map("n", "<leader>jt", ":w<CR>:MyJustArg test<CR>", opts)
map("n", "<leader>jv", ":w<CR>:MyJustArg run ", opts)

-- xmake
map("n", "<leader>x ", ":w<CR>:MyXMakeArg ", opts)
map("n", "<leader>x<CR>", ":w<CR>:MyXMakeArg<CR>", opts)
map("n", "<leader>xb", ":w<CR>:MyXMakeArg build'<CR>", opts)
map("n", "<leader>xc", ":w<CR>:MyXMakeArg clean'<CR>", opts)
map("n", "<leader>xr", ":w<CR>:MyXMakeArg run'<CR>", opts)
map("n", "<leader>xv", ":w<CR>:MyXMakeArg run ", opts)

-- esp-idf
map("n", "<leader>eg", ":TermExec cmd='idfget'<CR>", opts)
map("n", "<leader>eb", ":TermExec cmd='idf.py build'<CR>", opts)
map("n", "<leader>ef", ":TermExec cmd='idf.py flash'<CR>", opts)
map("n", "<leader>em", ":TermExec cmd='idf.py monitor'<CR>", opts)
map("n", "<leader>er", ":TermExec cmd='idf.py flash && idf.py monitor'<CR>", opts)

-- cargo
-- 算了其实都用makefile就能解决了()
-- map("n", "<leader>cr", ":w<CR>:!cargo run<CR>")
-- map("n", "<leader>c ", ":w<CR>:!cargo ")

-- 调整窗口大小
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- v模式连续调整缩进
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- 更方便的注释
-- 终端会把/识别为_，为什么呢()
map("v", "<C-/>", ":s/^/", opts)
map("v", "<C-_>", ":s/^/", opts)
map("v", "<leader>/", ":s/^/", opts)
map("v", "<leader>d", ":s/^.\\{-}\\s//<CR>", opts)

-- Home End 修复
-- 修复终端模式
vim.api.nvim_set_keymap('t', '^[[H', '<Home>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '^[[F', '<End>', {noremap = true, silent = true})
-- 修复插入模式
vim.api.nvim_set_keymap('i', '<Find>', '<Home>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<Select>', '<End>', {noremap = true, silent = true})
-- 修复普通模式
vim.api.nvim_set_keymap('n', '<Find>', '^', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Select>', '$', {noremap = true, silent = true})
-- 修复命令模式
vim.api.nvim_set_keymap('c', '<Find>', '', {
  noremap = true,
  silent = true,
  callback = function()
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Home>', true, false, true), 'c', false)
  end
})
vim.api.nvim_set_keymap('c', '<Select>', '', {
  noremap = true,
  silent = true,
  callback = function()
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<End>', true, false, true), 'c', false)
  end
})

-- 显示时间
map("n", "<F2>", ":echo '现在时间是' . strftime('%c') . ' 喵~'<CR>", opts)

-- 降维打击()
map("n", "<F3>", "i#include <stdio.h><CR><CR>int main(void) {<CR><CR>return 0;<CR>}<CR><Esc>kkk$a<Tab>", opts)

-- 撤回，保存，HJKL
map({"n", "i"}, "<C-Z>", "<Esc>u")
map({"n", "i"}, "<C-S>", "<Esc>:w<CR>")
map("n", "H", "^")
map("n", "L", "$")
map("v", "H", "^")
map("v", "L", "$")
map("n", "J", "j")
-- map("n", "K", "kkkkk")
map("i", "jk", "<ESC>")

-- NvimTree
map({"n", "i"}, "<A-f>", "<Esc>:NvimTreeFocus<CR>", opts)
map({"n", "i"}, "<A-e>", "<Esc>:NvimTreeToggle<CR>", opts)
map("n", "<leader>q", ":qa<CR>", opts)
