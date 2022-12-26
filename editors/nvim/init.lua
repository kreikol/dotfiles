-- print("Init load config...")

-- local data = vim.fn.stdpath('data')
-- print("Path data...", data)

g = vim.g 	-- opciones globales de VIM (disponible para todos mis archivos de config de nvim)

require ('settings')
require ('plugins')
require ('plugins/coc-nvim')
-- require ('plugins/indent-line')
require ('plugins/lualine')
require ('plugins/vim-bookmarks')
require ('keymaps')
vim.cmd ('source ~/.config/nvim/lua/macros.vim')

require('themes/gruvbox')
