local name = vim.fn.expand('%:t')
local command = 'python '..name

vim.notify(command)
local opt = {noremap=true,silent=true} local term_opt= {silent=true}
local keymap = vim.api.nvim_set_keymap



local Terminal  = require('toggleterm.terminal').Terminal

local Run = Terminal:new({cmd = command,hidden=true,close_on_exit=false})


function _RUN()
    Run:toggle()
end


keymap("n","<leader>n","<cmd>lua _RUN()<CR>",opt)

