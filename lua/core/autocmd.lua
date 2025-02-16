local autogroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Open help pages in vertical splits
autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- Open man pages in vertical splits
autocmd("FileType", {
	pattern = "man",
	command = "wincmd L",
})

autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = autogroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- User commands
vim.api.nvim_create_user_command("DiagnosticToggle", function()
	local config = vim.diagnostic.config
	local vt = config().virtual_text
	config({
		virtual_text = not vt,
		underline = not vt,
		signs = not vt,
	})
end, { desc = "toggle diagnostic" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.wo.wrap = true
		vim.wo.linebreak = true -- Prevent wrapping in the middle of a word
	end,
})
