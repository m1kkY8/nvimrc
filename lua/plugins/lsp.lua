return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		-- :help lspconfig-all for list of avaliable lsp servers
		-- since mason is removed all lsps should be added here manually
		-- all servers need to be installed on system first in order to work
		local servers = {
			"lua_ls",
			"clangd",
			"ts_ls",
			"pyright",
			"gopls",
			"bashls",
			"emmet_language_server",
		}

		local set = vim.keymap.set

		set("n", "gd", function()
			vim.lsp.buf.definition()
		end)
		set("n", "gI", function()
			vim.lsp.buf.implementation()
		end)
		set("n", "K", function()
			vim.lsp.buf.hover()
		end)
		set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end)
		set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end)
		set("n", "[d", function()
			vim.diagnostic.goto_next()
		end)
		set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end)
		set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end)
		set("n", "<leader>vrr", function()
			vim.lsp.buf.references()
		end)
		set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end)

		-- load all the servers
		for _, server in ipairs(servers) do
			require("lspconfig")[server].setup({ capabilities = capabilities })
		end
	end,
}
