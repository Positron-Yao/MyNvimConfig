local map = vim.keymap.set
local opts = {
    noremap = true,
    silent = true
}

-- vim.lsp.enable({"rust_analyzer","bacon_ls"})
vim.lsp.enable({"rust_analyzer"})

map("n", "<leader>c ", ":MyCargoArg ", opts)
map("n", "<leader>cb", ":MyCargoArg build'<CR>", opts)
map("n", "<leader>cr", ":MyCargoArg run'<CR>", opts)
map("n", "<leader>cv", ":MyCargoArg run ", opts)

-- 用xmake导致的
map("n", "<leader>x ", ":MyCargoArg ", opts)
map("n", "<leader>xb", ":MyCargoArg build'<CR>", opts)
map("n", "<leader>xr", ":MyCargoArg run'<CR>", opts)
map("n", "<leader>xv", ":MyCargoArg run ", opts)
