-- remaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
--vim.keymap.set("n", "<leader>h", vim.cmd.NvimTreeToggle)
--vim.keymap.set("n", "<leader>f", vim.cmd.NvimTreeFocus)

vim.keymap.set("n", "<C-s>", "<cmd> wa <CR>")
vim.keymap.set("i", "<C-s>", "<Esc><cmd> wa <CR>")
vim.keymap.set("n", "<leader>q", "<cmd> q<CR>")
vim.keymap.set("n", "<leader>lr", "<cmd> LspRestart<CR>")

vim.keymap.set("i", "jf", "<Esc>")
vim.keymap.set("n", ";", ":")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "dd", [["_dd]])
-- vim.keymap.set("n", "d", [["_d]])
-- vim.keymap.set("n", "D", [["_D]])

vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Currently not in use
vim.keymap.set('i', '<C-k>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
  silent = true
})
vim.g.copilot_no_tab_map = true
