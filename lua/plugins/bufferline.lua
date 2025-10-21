return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        require("bufferline").setup {
            options = {
                -- 显示所有 buffer line
                always_show_bufferline = true,  -- 启用后，当没有 buffer 时，bufferline 会自动隐藏
                -- 不显示状态栏的最后一个标签
                separator_style = 'thin',
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                -- 但是弄不成，算了()
                -- 我草，成了()()()()
                offsets = {{
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "left",
                    separator = true,
                }},
            }
        }
    end
}
