return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },

        build = ":TSUpdate",
        config = function()
            local config = require "nvim-treesitter.configs"
            config.setup({
                ensure_installed = {"c", "lua"},
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },

            })
        end
    }
}
