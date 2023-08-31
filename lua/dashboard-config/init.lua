--vim.g.dashboard_default_executive = 'telescope'
local db = require('dashboard')
db.preview_file_height = 11
db.preview_file_width = 70
db.setup({
  theme = 'doom',
  config = {
    header = {
	'					                                              ', 
	'					                                              ', 
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	'					                                              ', 
	'					                                              ', 
	' [------------- jose morales developer ----------------]',
	'					                                              ', 
	'					                                              ', 
	'					                                              ', 
		}, --your header
    center = {
      {
        icon = '🗎 ',
        icon_hl = 'Title',
        desc = ' Find File',
        desc_hl = 'String',
        key = 'ff',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'Telescope file_browser',
				shortcut = 'Leader ff'
      },
      {
        icon = ' ',
        desc = 'Find Dotfiles',
        key = 'f',
        keymap = 'SPC f d',
        action = 'lua print(3)'
      },
			{
				icon = '🔍',
				desc = ' NerdTree',
				key = 'n',
				keymap = 'SPC n'
      },
			{
				icon = '🗎',
				desc = ' New File',
				action = 'tabnew',
				shortcut = 'Leader nf'
			},

    },
    footer = {
      'Simple es mejor que complejo'
		}  --your footer
  }
})
