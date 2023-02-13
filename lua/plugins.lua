local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)


-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "preservim/nerdtree"	-- easy way to navigate 						
	use{'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }			
  } -- beauty status bar made with lua
  
  

  -- Sintax
	--emmet
	use {'mattn/emmet-vim'}
	--
	--treesitter
  use {'nvim-treesitter/nvim-treesitter', run='TSUpdate'}
  
  -- files manage

  -- Telescope
	use {
				'nvim-telescope/telescope.nvim', tag = '0.1.0',
				-- or                            , branch = '0.1.x',
				requires = { {'nvim-lua/plenary.nvim'} }
       } -- awesome and fast file finder  
   
  -- autocomplete
	--coc
	use {'neoclide/coc.nvim', branch = 'release'}
 
  -- copilot alternative
	--use 'Exafunction/codeium.vim'



  --TERMINAL--
  --togleterm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup{
					current_line_blame = true,
				  open_mapping = [[<c-\>]],
					size =10,
					shading_factor = 2,
				  direction = "float",
				  float_opts = {
          border = "curved",
          highlights = {
          border = "Normal",
          background = "Normal",
       },
     },
	}
  end}
  -- Git integrations
  -- fugitive awesome git integrations		 
  -- floaterm

	use 'tpope/vim-fugitive' 
	use {'lewis6991/gitsigns.nvim',
				config = function()
				require('gitsigns').setup{current_line_blame=true}
  end
	}
	--
  --
  -- appearance
  --Floaterm 
	use 'voldikss/vim-floaterm'
  --ident lines 
	use "lukas-reineke/indent-blankline.nvim"
  --devicons
	use 'ryanoasis/vim-devicons'
  -- buffer lines
	-- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  

	use 'nvim-tree/nvim-web-devicons'
  use 'glepnir/dashboard-nvim'


	

    
  --Themes
	--kanagawa
  use "rebelot/kanagawa.nvim" -- beutiful theme for nvim
  --nigthfox
	use "EdenEast/nightfox.nvim" -- great theme for nvim
	
	--
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)


