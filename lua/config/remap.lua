-- set the leader key to space
vim.g.mapleader = " "

-- open Netrw file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- join lines without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- scroll half-page up/down and center cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search next/previous and center view
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste over selection without copying deleted text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- navigate location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search and replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- source current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- remap pane switching to crtl + [hjkl]
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })
