require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")


local themes = {
  "tokyodark",
  "tokyonight-night",
  "cyberdream"
}

vim.cmd("colorscheme " .. themes[1])
