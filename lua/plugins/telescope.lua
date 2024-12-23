return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  config = function()
    require("telescope").setup({
      pickers = {
        find_files = {
          theme = "ivy"
        },
      },
      extensions = {
        fzf = {},
      },

      defaults = {
        file_ignore_patterns = { ".git/" },
      },
    })

    require("telescope").load_extension("fzf")

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader><leader>", builtin.find_files)
    vim.keymap.set("n", "<leader>sw", builtin.grep_string)
    vim.keymap.set("n", "<leader>sg", builtin.live_grep)
    vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
    vim.keymap.set("n", "<leader>sr", builtin.resume)
    vim.keymap.set("n", "<leader>sb", builtin.buffers)
    vim.keymap.set("n", "<leader>st", builtin.git_status)

    vim.keymap.set("n", "<leader>sn", function()
      builtin.find_files({ cwd = vim.fn.stdpath("config") })
    end)
  end,

  require "plugins.telescope.multi".setup()
}
