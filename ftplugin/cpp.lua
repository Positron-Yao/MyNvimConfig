local map = vim.keymap.set
local opts = {
    noremap = true,
    silent = true
}

vim.lsp.enable("clangd")
-- xmake
map("n", "<leader>x ", ":MyXMakeArg ", opts)
map("n", "<leader>x<CR>", ":MyXMakeArg<CR>", opts)
map("n", "<leader>xb", ":MyXMakeArg build'<CR>", opts)
map("n", "<leader>xc", ":MyXMakeArg clean'<CR>", opts)
map("n", "<leader>xr", ":MyXMakeArg run'<CR>", opts)
map("n", "<leader>xv", ":MyXMakeArg run ", opts)

