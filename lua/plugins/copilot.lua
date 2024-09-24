return {
  "github/copilot.vim",
  enabled = true,

  config = function()
    vim.cmd(":Copilot disable")
  end
}
