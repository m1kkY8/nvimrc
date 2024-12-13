require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")

local themes = {
	"dark_flat",
	"carbonfox",
	"dayfox",
	"nightfox",
	"duskfox",
	"tokyonight",
	"tokyodark",
	"cyberdream",
}
vim.cmd("colorscheme " .. themes[1])
