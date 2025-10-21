return {
    'akinsho/toggleterm.nvim', version = "*", config = true,
    config = function()
        require("toggleterm").setup{
            size = function(term)
                if term.direction == "horizontal" then
                    return 9
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.33
                end
            end,
            -- direction = 'float',
            shade_terminals = false,
        }
    end
}
