local ok,tsconfig = pcall(require,"nvim-treesitter.configs")


if not ok then
    return
end

tsconfig.setup({
    ensure_installed = { "cpp", "lua","help" },
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
    indent = { enable = true, disable = { "css" } },
    autopairs = {
		enable = true,
	},
})
