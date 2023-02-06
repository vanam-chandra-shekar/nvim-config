vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


local ok,packer = pcall(require,"packer")
if not ok then
    return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.startup(function(use)
    use "wbthomason/packer.nvim"
    
    --color scheme
    use 'marko-cerovac/material.nvim'

    use {
        'nvim-lualine/lualine.nvim',
    }



    use {
        'nvim-tree/nvim-tree.lua'
    }
    
    use 'nvim-tree/nvim-web-devicons' 

    --telescope
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    --treesitter
    use "nvim-treesitter/nvim-treesitter"
    

    use {
	"windwp/nvim-autopairs"
    }

    use {"akinsho/toggleterm.nvim", tag = '*'}


    use({
	    "Pocco81/auto-save.nvim",
	    config = function()
		     require("auto-save").setup {}
	    end,
    })

    --hop
    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({})
        end
     })


    
    use "lukas-reineke/indent-blankline.nvim"



    use "mg979/vim-visual-multi"




    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
end)

