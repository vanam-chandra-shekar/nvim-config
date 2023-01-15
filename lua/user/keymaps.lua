local opt = {noremap=true,silent=true} local term_opt= {silent=true}

local keymap = vim.api.nvim_set_keymap


keymap("","<Space>","Nop",opt)
vim.g.mapleader=" "
vim.g.maplocalleader=" "

--window navigation
keymap("n","<C-h>","<C-w>h",opt)
keymap("n","<C-j>","<C-w>j",opt)
keymap("n","<C-k>","<C-w>k",opt)
keymap("n","<C-l>","<C-w>l",opt)


keymap("v","p",'"_dP',opt)
keymap("v","<A-j>",":m '>+1<CR>gv=gv",opt)
keymap("v","<A-k>",":m .-2<CR>==gv",opt)

--insertmode
keymap("i","jj","<ESC>",opt)
keymap("v","jk","<ESC>",opt)


--explorer
keymap("n","<leader>e",":NvimTreeToggle<CR>",opt)

--adding easy split
keymap("n","<leader>sv","<C-w>v",opt)
keymap("n","<leader>sh",":split<CR>",opt)
keymap("n","<leader>sx",":close<CR>",opt)






