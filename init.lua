require("core/lazy")
require("core/keybinds")
require("core/autocmd")
require("core/setopts")

local themes = {
	"tokyonight",
	"dayfox",
	"cyberdream",
	"tokyodark",
	"dark_flat",
	"carbonfox",
	"nightfox",
	"duskfox",
}
vim.cmd("colorscheme " .. themes[1])
