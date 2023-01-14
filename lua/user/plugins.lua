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
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
end)

