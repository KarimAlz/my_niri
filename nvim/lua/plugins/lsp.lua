return {
    {
	'neovim/nvim-lspconfig',
	dependencies = { 'saghen/blink.cmp' },
	opts = {
	    servers = {
		lua_ls = {},
		pyright = {},
		json_lsp = {},
		clangd = {},
		fish_lsp = {},

	    }
	},
	config = function(_, opts)

	    for server, config in pairs(opts.servers) do
		config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
		vim.lsp.config(server, config)
		vim.lsp.enable(server)
	    end

	    vim.diagnostic.config({
		virtual_text = true,
		severity_sort = true,
		float = {
		    style = 'minimal',
		    border = 'rounded',
		    header = '',
		    prefix = '',
		},
		signs = {
		    text = {
			[vim.diagnostic.severity.ERROR] = '✘',
			[vim.diagnostic.severity.WARN] = '▲',
			[vim.diagnostic.severity.HINT] = '⚑',
			[vim.diagnostic.severity.INFO] = '»',
		    },
		},
	    })

	end
    },

    {
	'mason-org/mason.nvim',
	opts = {
	    ui = {
		icons = {
		    package_installed = "✓",
		    package_pending = "➜",
		    package_uninstalled = "✗"
		}
	    }
	}
    },

    {
	'mason-org/mason-lspconfig.nvim',
	ensure_installed = {
	    'lua_ls',
	    'pyright',
	    'clangd',
	    'json_lsp',
	    'cssls',

	},
	dependecies = {
	    { 'mason-org/mason.nvim', opts = {} },
	    'neovim/nvim-lspconfig',
	}
    }

}
