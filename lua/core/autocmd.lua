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
