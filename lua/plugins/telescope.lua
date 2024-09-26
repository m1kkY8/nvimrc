return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    'nvim-tree/nvim-web-devicons',
    enabled = vim.g.have_nerd_font,
    lazy = true,
  },

  config = function()
    require("telescope").setup {
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),

        },
      },
      defaults = {
        file_ignore_patterns = { ".git/" }
      }
    }

    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader><leader>', builtin.find_files)
    vim.keymap.set('n', '<leader>sw', builtin.grep_string)
    vim.keymap.set('n', '<leader>sg', builtin.live_grep)
    vim.keymap.set('n', '<leader>sd', builtin.diagnostics)
    vim.keymap.set('n', '<leader>sr', builtin.resume)
    vim.keymap.set('n', '<leader>sb', builtin.buffers)
    vim.keymap.set('n', '<leader>st', builtin.git_status)
    vim.keymap.set('n', '<leader>T', builtin.colorscheme)

    vim.keymap.set('n', '<leader>sn', function()
      builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end)

    vim.keymap.set('n', '<leader>/', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end)
  end
}
