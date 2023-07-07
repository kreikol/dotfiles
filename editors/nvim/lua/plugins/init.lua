-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		print("Packer installed")
		--vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Carga de los plugings con packer

vim.cmd [[ packadd packer.nvim ]]
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	use {'neoclide/coc.nvim', branch = 'release'}

	-- themes y estilos
	use 'morhetz/gruvbox'
	use { 
		'nvim-lualine/lualine.nvim', 
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

	-- Comentarios
	use 'tpope/vim-commentary'

	use { 'Yggdroot/indentLine' }

	-- NERDTree 
	use { 'scrooloose/nerdtree' }
	use { 'ryanoasis/vim-devicons' }

	-- Markdown
	use { 'nelstrom/vim-markdown-folding' }
	use { 'preservim/vim-markdown' }
	-- use { 'scuilion/markdown-drawer' }
	
	use { 'MattesGroeger/vim-bookmarks' }

	-- diffview
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

	-- orgmode
	use {'nvim-treesitter/nvim-treesitter'}
	use {'nvim-orgmode/orgmode', config = function()
			require('orgmode').setup{}
		end
	}
	
	-- dadbod UI
	use {'tpope/vim-dadbod' }
	use {'kristijanhusak/vim-dadbod-ui', 
		requires = {
			-- 'tpope/vim-dadbod', 
			'tpope/vim-dotenv'
		}

	}
	
	if packer_bootstrap then
	     require('packer').sync()
	end
end)

