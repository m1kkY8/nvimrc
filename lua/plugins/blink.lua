return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = "rafamadriz/friendly-snippets",

	-- use a release tag to download pre-built binaries
	version = "*",
	opts = {
		keymap = {
			preset = "enter",
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		},

		completion = {
			list = {
				selection = {
					preselect = false,
					auto_insert = true,
				},
			},

			ghost_text = { enabled = true },

			documentation = {
				auto_show = true,
				auto_show_delay_ms = 500,
			},

			menu = {
				draw = {
					columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", gap = 1 } },
				},
			},
		},

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		signature = { enabled = true },

		sources = {
			default = { "lsp", "path", "snippets" },
		},
	},
	opts_extend = { "sources.default" },
}
