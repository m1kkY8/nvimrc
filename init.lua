require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")

local themes = {
	"dayfox",
	"nightfox",
	"carbonfox",
	"duskfox",
	"tokyonight",
	"tokyodark",
	"cyberdream",
}
vim.cmd("colorscheme " .. themes[1])
