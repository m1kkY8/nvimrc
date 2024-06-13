-- remaps
local key = vim.keymap.set

key("n", "<Esc>", "<cmd>nohlsearch<CR>")

--key("n", "<leader>h", vim.cmd.NvimTreeToggle)
--key("n", "<leader>f", vim.cmd.NvimTreeFocus)

key("n", "<C-s>", "<cmd> wa <CR>")
key("i", "<C-s>", "<Esc><cmd> wa <CR>")
key("i", "jj", "<Esc>")

key("v", "K", ":m '<-2<CR>gv=gv", {silent=true})
key("v", "J", ":m '>+1<CR>gv=gv", {silent=true})

key("n", "sh", "<C-w>h")
key("n", "sl", "<C-w>l")
key("n", "sL", "<C-w>L")

key("n", "J", "mzJ`z")
key("n", "<C-d>", "<C-d>zz")
key("n", "<C-u>", "<C-u>zz")
key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")

key("x", "<leader>p", [["_dP]])
key("n", "<leader>Y", [["+Y]])
key({ "n", "v" }, "<leader>y", [["+y]])

key({ "n", "v" }, "<leader>d", [["_d]])

key("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


key("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

-- vsplit and open terminal

key("t", "<Esc>", "<C-\\><C-n>")

