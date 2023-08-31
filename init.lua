--[[
      _                          __  __                          _                  
     | |   ___    ___    ___    |  \/  |   ___    _ __    __ _  | |   ___   ___     
  _  | |  / _ \  / __|  / _ \   | |\/| |  / _ \  | '__|  / _` | | |  / _ \ / __|    
 | |_| | | (_) | \__ \ |  __/   | |  | | | (_) | | |    | (_| | | | |  __/ \__ \    
  \___/   \___/  |___/  \___|   |_|  |_|  \___/  |_|     \__,_| |_|  \___| |___/    
  _                        __     __  _                  ____                    __ 
 | |      _   _    __ _    \ \   / / (_)  _ __ ___      / ___|   ___    _ __    / _|
 | |     | | | |  / _` |    \ \ / /  | | | '_ ` _ \    | |      / _ \  | '_ \  | |_ 
 | |___  | |_| | | (_| |     \ V /   | | | | | | | |   | |___  | (_) | | | | | |  _|
 |_____|  \__,_|  \__,_|      \_/    |_| |_| |_| |_|    \____|  \___/  |_| |_| |_|  
                                                                                    
--]]


require('settings')
require('keymaps')
require('plugins')
require("toggleterm").setup{}
require('bufferline-config')
require('lualine-config')
require('treesitter-config')
require('dashboard-config')
require('comments-config')
require("nvim-treesitter.install").prefer_git = true
