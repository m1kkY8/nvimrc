return {

    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
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

    config = function ()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            local opts = {buffer = bufnr, remap = false}
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
        end)

        require('mason').setup({})
        require('mason-lspconfig').setup({
            ensure_installed = {'lua_ls', "clangd", "pyright", "tsserver"},
            handlers = {
                lsp_zero.default_setup,
                lua_ls = function()
                    local lua_opts = lsp_zero.nvim_lua_ls()
                    require('lspconfig').lua_ls.setup(lua_opts)
                end,
            }
        })

        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
            sources = {
                {name = 'path'},
                --{name = 'cmdline'},
                {name = 'nvim_lsp'},
                {name = 'nvim_lua'},
                {name = 'luasnip', keyword_length = 2},
                {name = 'buffer', keyword_length = 3},
            },
            formatting = lsp_zero.cmp_format(),
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({ select = true}),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })

    end

}
