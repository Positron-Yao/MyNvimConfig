-- xmake + toggleterm
vim.api.nvim_create_user_command("MyTermRun", function(input)
    local command = input.args
    vim.cmd(string.format("TermExec cmd='%s'", command))
end, {nargs = '?', desc = 'Run command in the terminal'})

vim.api.nvim_create_user_command("MyXMakeArg", function(input)
    local command = input.args
    vim.cmd(string.format("TermExec cmd='xmake %s'", command))
end, {nargs = '?', desc = 'Run xmake command in the terminal'})

vim.api.nvim_create_user_command("MyJustArg", function(input)
    local command = input.args
    vim.cmd(string.format("TermExec cmd='just %s'", command))
end, {nargs = '?', desc = 'Run just command in the terminal'})
