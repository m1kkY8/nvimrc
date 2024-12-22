-- remaps
local set = vim.keymap.set

set("n", "<Esc>", "<cmd>nohlsearch<CR>")

set("n", "<C-s>", "<cmd> wa <CR>")
set("i", "<C-s>", "<Esc><cmd> wa <CR>")

set("n", "<leader>q", "<cmd> q<CR>")
set("n", "<leader>lr", "<cmd> LspRestart<CR>")

set("i", "jf", "<Esc>")
set("n", ";", ":")

set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })

set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Olog.Println(err)<Esc>")
set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
