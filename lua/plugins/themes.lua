return {
  -- nightfox

  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            types = "italic,bold",
            functions = "italic, bold",
            keywords = "bold",
          },
        },
      })
    end,
  }, -- lazy

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      style = "day",
      styles = {
        floats = "transparent",
        sidebars = "transparent",
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },


}
