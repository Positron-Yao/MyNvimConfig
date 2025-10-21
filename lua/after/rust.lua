vim.api.nvim_create_autocmd("FileType", {
    pattern = "rust",
    callback = function()
        vim.g.lazyvim_rust_diagnostics = "bacon-ls"
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                -- 启用悬停文档的按键映射
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = "Show documentation" })
                -- 可选：添加其他常用 LSP 功能键
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = "Go to definition" })
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = "Show references" })
                vim.keymap.set('n', '<leader>cr', ':w<CR>:Cargo run<CR>', { noremap = true, silent = true, buffer = true })
            end,
        })
    end
})
