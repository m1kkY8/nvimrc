return {

  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v4.x',
    },
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
    {
      "L3MON4D3/LuaSnip",
      dependencies = { "rafamadriz/friendly-snippets" },
    },
    'hrsh7th/cmp-cmdline'

  },

  config = function()
    local lsp_zero = require('lsp-zero')
    local lsp_attach = function(client, bufnr)
      local opts = { buffer = bufnr }
      local map = vim.keymap.set

      map("n", "gd", function() vim.lsp.buf.definition() end, opts)
      map("n", "gD", function() vim.lsp.buf.declaration() end, opts)
      map("n", "gI", function() vim.lsp.buf.implementation() end, opts)
      map("n", "K", function() vim.lsp.buf.hover() end, opts)
      map("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
      map("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
      map("n", "[d", function() vim.diagnostic.goto_next() end, opts)
      map("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
      map("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
      map("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
      map("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    end


    lsp_zero.extend_lspconfig({
      sign_text = true,
      lsp_attach = lsp_attach,
      float_border = "rounded",
      capabilities = require('cmp_nvim_lsp').default_capabilities()

    })


    require('mason').setup({})
    require('mason-lspconfig').setup({
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,
      }
    })



    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    -- require('luasnip.loaders.from_vscode').lazy_load()

    cmp.setup({
      sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
        snippet = cmp.config.window.bordered(),
      },

      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
      }),

    })
  end

}
