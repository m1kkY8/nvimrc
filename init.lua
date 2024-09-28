require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")

local themes = {
  "tokyonight",
  "tokyodark",
  "cyberdream"
}
vim.cmd("colorscheme " .. themes[3])
