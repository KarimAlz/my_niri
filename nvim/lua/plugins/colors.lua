return {
    {
	"ellisonleao/gruvbox.nvim",
	priority = 1000 ,
	config = true,
	opts = ...
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = { "gruvbox" },
    },
}


