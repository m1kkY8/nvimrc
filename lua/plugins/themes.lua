return {
	-- flat
	--
	{
		"sekke276/dark_flat.nvim",
		config = function()
			require("dark_flat").setup({
				transparent = true,
				italics = true,
			})
		end,
	},

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

	-- Tokyo dark
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			transparent_background = true,
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

	-- Cyberdream
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				theme = {
					variant = "dark",
				},
				transparent = false,
				italic_comments = true,
				hide_fillchars = false,
				borderless_telescope = false,
			})
		end,
	},
}
