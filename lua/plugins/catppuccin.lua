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
            
            --apply theme to plugins
            telescope = { enabled = true },
            harpoon = { enabled = true },
            mason = { enabled = true },  

            --text formating
            styles = { 
                comments = { "italic" }, 
                conditionals = { "italic" },
                loops = { "italic" },
                functions = { "italic" },
            }
        })

        vim.cmd.colorscheme("catppuccin")

        -- TODO figure this out

        --function RemoveBG()
        --    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        --    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        --end
        --RemoveBG()
    end
}
