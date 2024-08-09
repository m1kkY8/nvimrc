return {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        local config = require("tokyonight")
        config.setup({

            transparent = true,
            terminal_colors = true,
            styles = {
                comments = {italic = true},
                keywords = {italic = true},

                sidebars = "transparent",
                floats = "transparent",
            }
        })

        -- Load the colorscheme here.
        -- Like many other themes, this one has different styles, and you could load
        -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
        -- vim.cmd.colorscheme 'tokyonight-night'
        -- vim.cmd.colorscheme 'tokyonight-night'
        -- You can configure highlights by doing something like
        -- vim.cmd.hi 'Comment gui=none'
    end,


}
