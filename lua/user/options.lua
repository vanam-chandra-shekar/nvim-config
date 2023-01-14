
local options = {
    relativenumber = true,
    number = true,
    tabstop = 4,
    shiftwidth = 4,
}

for key,value in options do
    vim.opt[key]=value
end
