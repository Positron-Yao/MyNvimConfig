return {
    "hrsh7th/nvim-cmp", -- 主补全插件
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- LSP 补全源
        "L3MON4D3/LuaSnip", -- 代码片段引擎（可选但推荐）
    },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            -- mapping = cmp.mapping.preset.insert({
            --     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
            --     ['<C-Space>'] = cmp.mapping.complete(),
            --     ['<C-e>'] = cmp.mapping.abort(),
            --     ['<CR>'] = cmp.mapping.confirm({ select = true }),
            -- }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' }, -- 这里确保 LSP 作为补全源
                { name = 'luasnip' }, -- 代码片段源
            }, {
                { name = 'buffer' }, -- 缓冲区补全
            })
        })
    end,
}
