local colorscheme = "material"
vim.g.material_style = "deep ocean"

require('material').setup({

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-tree",
        -- "nvim-web-devicons",
        -- "sneak",
        -- "telescope",
        -- "trouble",
        -- "which-key",
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
})

local status_ok,_= pcall(vim.cmd,"colorscheme "..colorscheme)

if not status_ok then
    vim.notify("colourscheme "..colorscheme.." not found")
    vim.cmd "colorscheme slate"
    return
end

