return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },

  build = ":TSUpdate",
  config = function()
    local config = require "nvim-treesitter.configs"
    config.setup({
      ensure_installed = { "c", "lua" },
      sync_install = false,
      auto_install = true,
      ignore_install = { "gitcommit" },
      highlight = { enable = true },
      indent = { enable = true },

    })
  end

}
