return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {

        columns = {
          "icon",
          -- "permissions",
          -- "size",
        },

        keymaps = {
          ["<C-s>"] = false,
          ["<C-h>"] = false,
          -- ["<M-h>"] = "actions.select_split",
        },

        view_options = {
          show_hidden = true,
        },
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = false,
      }

      -- Open parent directory in current window
      -- vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Open parent directory in floating window" })
    end,
  },
}
