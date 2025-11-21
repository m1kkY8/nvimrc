return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"yamlls",
		},
		automatic_installation = true,
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "qvalentin/helm-ls.nvim", ft = "helm" },
		{ "neovim/nvim-lspconfig" },
		{
			"folke/lazydev.nvim",
			ft = "lua",
			opts = {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		require("mason-lspconfig").setup({
			automatic_enable = true,
		})

		local capabilities = require("blink.cmp").get_lsp_capabilities()

		-- Use LspAttach to setup keymaps
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local buf = args.buf
				local set = vim.keymap.set
				set("n", "gd", vim.lsp.buf.definition, { buffer = buf })
				set("n", "gI", vim.lsp.buf.implementation, { buffer = buf })
				set("n", "K", vim.lsp.buf.hover, { buffer = buf })
				set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { buffer = buf })
				set("n", "<leader>vd", vim.diagnostic.open_float, { buffer = buf })
				set("n", "<leader>vca", vim.lsp.buf.code_action, { buffer = buf })
				set("n", "<leader>vrr", vim.lsp.buf.references, { buffer = buf })
				set("n", "<leader>vrn", vim.lsp.buf.rename, { buffer = buf })
			end,
		})

		vim.lsp.config("ruff", {
			capabilities = capabilities,
		})

		vim.lsp.config("pylsp", {
			settings = {
				pylsp = {
					plugins = {
						pyflakes = { enabled = false },
						pycodestyle = { enabled = false },
						pylint = { enabled = false },
						mccabe = { enabled = false },
					},
				},
			},
		})

		vim.lsp.config("yamlls", {
			capabilities = capabilities,
			settings = {
				["helm-ls"] = {
					yamlls = { path = "yaml-language-server" },
				},
				yaml = {
					schemas = {
						["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
						["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
						["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/**/*.{yml,yaml}",
						["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
						["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
						["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
						["http://json.schemastore.org/circleciconfig"] = ".circleci/**/*.{yml,yaml}",
					},
				},
			},
		})
		vim.lsp.enable({ "yamlls" })
	end,
}
