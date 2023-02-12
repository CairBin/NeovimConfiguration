vim.g.mapleader = " "

local keymap = vim.keymap

-- View mode
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- Normal mode
-- Window
keymap.set("n","<leader>sv","<C-w>v") -- Add window horizontally
keymap.set("n","<leader>sh","<C-w>s") -- Add window vertically

-- Cancel highlight
keymap.set("n","<leader>nh",":nohl<CR>")

-- Open & Close nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

-- Change buffer
keymap.set("n","<C-L>",":bnext<CR>")
keymap.set("n","<C-H>",":bprevious<CR>")
