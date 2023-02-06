local name = vim.fn.expand("%:t")
local exename = string.gsub(name, ".cpp", "")
local compile = "g++ "..name.." -o "..exename
local run = ".\\"..exename
local opt = {noremap=true,silent=true} local term_opt= {silent=true}
local keymap = vim.api.nvim_set_keymap



local Terminal  = require('toggleterm.terminal').Terminal

local Run = Terminal:new({cmd = run,hidden=true,close_on_exit=false})
local Compile = Terminal:new({cmd=compile,hidden=true,close_on_exit=false})

function _COMPILE()
    Compile:toggle()
end

function _RUN()
    Run:toggle()
end


keymap("n","<leader>b","<cmd>lua _COMPILE()<CR>",opt)
keymap("n","<leader>n","<cmd>lua _RUN()<CR>",opt)
