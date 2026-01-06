return {

    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlights = { enable = true },
	    indent = { enable = true },
	    autotage = { enable = true},
	    
	    ensure_installed = {
		"lua",
		"css",
		"json",
		"jsonc",
		"python",
		"bash",
		"fish",
		"c",
		"c_sharp",
		"cpp",
	    },
	    auto_install = false,
	})
    end
}
