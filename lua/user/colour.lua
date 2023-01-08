local colorscheme = "tokyonight-night"

local status_ok,_= pcall(vim.cmd,"colorscheme "..colorscheme)

if not status_ok then
    vim.notify("colourscheme "..colorscheme.." not found")
    vim.cmd "colorscheme slate"
    return
end
