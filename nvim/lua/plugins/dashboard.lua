return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function ()
	require('dashboard').setup{
	    theme = 'doom',
	    config = {
		spacing = 10,

		header = {


		    '',
		    '',
		    '   ▄█   ▄█▄    ▄████████    ▄█   ▄█▄    ▄████████      ▀█████████▄      ███      ▄█     █▄  ',
		    '  ███ ▄███▀   ███    ███   ███ ▄███▀   ███    ███        ███    ███ ▀█████████▄ ███     ███ ',
		    '  ███▐██▀     ███    █▀    ███▐██▀     ███    █▀         ███    ███    ▀███▀▀██ ███     ███ ',
		    ' ▄█████▀     ▄███▄▄▄      ▄█████▀      ███              ▄███▄▄▄██▀      ███   ▀ ███     ███ ',
		    '▀▀█████▄    ▀▀███▀▀▀     ▀▀█████▄    ▀███████████      ▀▀███▀▀▀██▄      ███     ███     ███ ',
		    '  ███▐██▄     ███    █▄    ███▐██▄            ███        ███    ██▄     ███     ███     ███ ',
		    '  ███ ▀███▄   ███    ███   ███ ▀███▄    ▄█    ███        ███    ███     ███     ███ ▄█▄ ███ ',
		    '  ███   ▀█▀   ██████████   ███   ▀█▀  ▄████████▀       ▄█████████▀     ▄████▀    ▀███▀███▀  ',
		    '  ▀                        ▀                                                                ',
		    '',
		    '',
		},


		center = {
		    {
			icon = ' ',
			--icon_hl = 'Title',
			desc = 'Find File           ',
			--desc_hl = 'String',
			key = 'f',
			key_hl = 'Number',
			-- key_format = ' %s', -- remove default surrounding `[]`
			action = 'Telescope find_files'
		    },
		    {
			icon = ' ',
			desc = 'Create new file',
			key = 'n',
			--key_format = ' %s', -- remove default surrounding `[]`
			action = 'enew'
		    },
		    {
			icon = ' ',
			desc = 'Recent files',
			key = 'r',
			action = 'Telescope oldfiles',
		    },
		    {
			icon = ' ',
			desc = 'Open Neovim config',
			key = 'c',
			action = 'e ~/.config/nvim/init.lua',
		    },
		    {
			icon = ' ',
			desc = 'Lazy.nvim',
			key = 'L',
			action = 'Lazy',
		    },
		    {
			icon = ' ',
			desc = 'Mason',
			key = 'M',
			action = 'Mason',
		    },
		},
		footer = function ()
		    local stats = require('lazy').stats()
		    local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
		    return { 'Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. ' ms'}
		end,
	    }
	}
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
}
