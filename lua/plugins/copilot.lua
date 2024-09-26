return {
  "github/copilot.vim",
  enabled = true,

  config = function()
    vim.cmd(":Copilot disable")
    vim.keymap.set('i', '<C-k>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true
    })
    vim.g.copilot_no_tab_map = true
  end
}
