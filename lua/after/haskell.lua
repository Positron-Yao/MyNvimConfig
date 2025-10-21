vim.api.nvim_create_autocmd("FileType", {
  pattern = "haskell", -- 文件类型
  callback = function()
    -- 对haskell使用2格缩进
    vim.bo.tabstop = 2     -- 设置 TAB 显示宽度
    vim.bo.shiftwidth = 2   -- 设置缩进级别
    -- local ht = require('haskell-tools')
    -- local bufnr = vim.api.nvim_get_current_buf()
    -- local opts = { noremap = true, silent = true, buffer = bufnr, }
    -- -- haskell-language-server relies heavily on codeLenses,
    -- -- so auto-refresh (see advanced configuration) is enabled by default
    -- vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
    -- -- Hoogle search for the type signature of the definition under the cursor
    -- vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
    -- -- Evaluate all code snippets
    -- vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
    -- Toggle a GHCi repl for the current package
    -- vim.keymap.set('n', '<leader>rr', ht.repl.toggle, opts)
    -- Toggle a GHCi repl for the current buffer
    -- vim.keymap.set('n', '<leader>rf', function()
    --   ht.repl.toggle(vim.api.nvim_buf_get_name(0))
    -- end, opts)
    -- vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)

    vim.keymap.set('n', '<space>a', '<Plug>HaskellHoverAction')
    vim.keymap.set('n', 'gk', vim.lsp.buf.hover, opts)
  end
})
