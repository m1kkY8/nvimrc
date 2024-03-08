return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
        local config = require("catppuccin")
        config.setup({
            transparent_background = true,
            term_colors = true,
            telescope = { enabled = true },
            harpoon = { enabled = true },
            mason = { enabled = true },

            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                loops = { "italic" },
                functions = { "italic" },
            }
        })

--        vim.cmd.colorscheme("catppuccin")
    end
}
