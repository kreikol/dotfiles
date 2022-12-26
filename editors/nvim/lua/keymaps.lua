-- print(" loadinf [keymaps] ...")

local keys = vim.keymap 	-- mapeo de teclas

g.mapleader = ' '
keys.set('n', '<leader>w', ':w<CR>')
keys.set('n', '<leader>q', ':q<CR>')
keys.set('n', '<leader>Q', ':q!<CR>')

keys.set('n', '<leader>R', ':luafile ~/.config/nvim/init.lua<CR>')
keys.set('n', '<leader>r', ':w<CR>:luafile %<CR>')

-- Manejo de buffers

keys.set('n', 'bn', ':bnext<CR>')
keys.set('n', 'bp', ':bprevious<CR>')
keys.set('n', 'bd', ':bdelete<CR>')

-- Comentarios

keys.set('n', '<leader>.', ':Commentary<CR>')
keys.set('v', '<leader>.', ':Commentary<CR>')
keys.set('n', '<A-.>', ':Commentary<CR>')
keys.set('v', '<A-.>', ':Commentary<CR>')

-- NERDTree 

keys.set('n', '<F2>', ':NERDTreeFind<CR>')
keys.set('n', '<F3>', ':NERDTreeToggle<CR>')

-- Formateo de código
keys.set('n', '<C-F>', ':Format<CR>')
keys.set('v', '<C-F>', ':Format<CR>')

-- Markdown tree
keys.set('v', '<leader>toc', ':Toc<CR>')
