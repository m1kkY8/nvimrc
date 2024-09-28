return {
  -- Tokyo dark
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      transparent_background = true
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      style = "night",
      styles = {
        floats = "transparent",
        sidebars = "transparent"
      }
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end
  },

  -- Cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        transparent = true,
        italic_comments = true,
        hide_fillchars = false,
        borderless_telescope = false,
      })
    end
  }
}
