local autogroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

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

autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = autogroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- User commands
vim.api.nvim_create_user_command("DiagnosticToggle", function()
  local config = vim.diagnostic.config
  local vt = config().virtual_text
  config {
    virtual_text = not vt,
    underline = not vt,
    signs = not vt,
  }
end, { desc = "toggle diagnostic" })


-- Define global themes variable
_G.themes = {
  "tokyodark",
  "rose-pine",
  "catppuccin-mocha"
}

-- Global function to set colorscheme
function _G.colors(number)
  local scheme = themes[number]

  if scheme then
    vim.cmd("colorscheme " .. scheme)
    vim.g.current_theme = number -- Save current theme index globally
  else
    print("Invalid theme")
  end
end

-- Create a Vim command to call the colors function
vim.api.nvim_create_user_command('Colors', function(opts)
  local number = tonumber(opts.args) -- Convert argument to a number
  colors(number)                     -- Call the global colors function with the number
end, { nargs = 1 })                  -- Allow one argument

-- Restore the last used theme on startup
if vim.g.current_theme then
  colors(vim.g.current_theme)
else
  colors(1) -- Default to the first theme if no theme is set
end
