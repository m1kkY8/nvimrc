require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")

local themes = {
  "nightfox",
  "tokyonight",
  "carbonfox",
  "tokyodark",
  "dayfox",
  "duskfox",
}
vim.cmd("colorscheme " .. themes[1])
