local ok,term = pcall(require,"toggleterm")

if not ok then
    return
end

term.setup({
    cmd = 'clear',
    size = 40,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    autochdir = true,
    start_in_insert = true,
    direction = 'float',
    hidden = false,
    border = 'curved',
    auto_scroll = true,
})


function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 'n', '<leader>tx', ":bd!<CR>", opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')




local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({cmd = 'lazygit',direction = 'float'})

function _LAZYGIT()
    lazygit:toggle()
end



