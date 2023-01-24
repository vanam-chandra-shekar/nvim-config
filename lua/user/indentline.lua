vim.opt.list = true
vim.opt.listchars:append "eol:↴"

local ok,blankline = pcall(require,"indent_blankline")

if not ok then
    return
end

blankline.setup {
    show_end_of_line = true,
}
