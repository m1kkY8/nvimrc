local autogroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = autogroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Open help pages in vertical splits
autocmd("FileType", {
  pattern = "help",
  command = "wincmd L"
})

-- Open man pages in vertical splits
autocmd("FileType", {
  pattern = "man",
  command = "wincmd L"
})

vim.api.nvim_create_user_command("DiagnosticToggle", function()
  local config = vim.diagnostic.config
  local vt = config().virtual_text
  config {
    virtual_text = not vt,
    underline = not vt,
    signs = not vt,
  }
end, { desc = "toggle diagnostic" })
