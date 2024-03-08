return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require("telescope").setup { defaults = { file_ignore_patterns = { ".git/" } } }


        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader><leader>', function() builtin.find_files() end)
        vim.keymap.set('n', '<leader>fg', function() builtin.live_grep() end)
        vim.keymap.set('n', '<leader>fb', function() builtin.buffers() end)
        vim.keymap.set('n', '<leader>fh', function() builtin.help_tags() end)
        vim.keymap.set('n', '<leader>st', function() builtin.git_status() end)

        vim.keymap.set('n', '<leader>sn', function ()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end)
    end
}
