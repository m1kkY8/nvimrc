return {
  "github/copilot.vim",
  enabled = false,

  config = function()
    vim.cmd(":Copilot disable")
  end
}
