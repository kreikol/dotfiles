-- print(" loadinf [settings] ...")

local o = vim.o 	-- opciones generales
local opt = vim.opt 	-- opciones generales
local wo = vim.wo 	-- opciones de ventanas
local bo = vim.bo 	-- opciones de buffers
local gs = vim.g 	-- opciones globales

-- Cuando se copia de nvim (Yank), va al click central y al Ctrl+C. 
-- Cuando se pega en nvim, están disponibles los dos, con el valor que haya en 
-- cada uno.

vim.cmd ('set clipboard+=unnamedplus')
vim.cmd ('set clipboard+=unnamed')

-- No copia el caracter eliminado en el registro
vim.keymap.set({'n', 'x'}, 'x', '"_x')

o.mouse = a
o.hidden = true

o.number = true
o.relativenumber = true

o.autoindent = true
o.wrap = true
o.linebreak = true
o.list = false

local maxwidth = 160
o.textwidth = maxwidth
o.cursorcolumn = true
o.colorcolumn = maxwidth

-- Indentación 

o.tabstop = 2
o.smartindent = true
o.shiftwidth = 2
-- g.syntax = true
vim.cmd(' syntax enable ')

-- Cargar los ficheros JSON como formato
vim.cmd (" au! BufRead,BufNewFile *.json %! jq . ")

-- Resaltado de la línea del cursor
vim.cmd([[

set cursorline
hi CursorLine cterm=NONE ctermbg=235

]])

-- Resaltado del Yank
vim.cmd ([[
au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=250, on_visual=false}
]])

-- COlores de terminal
--
opt.termguicolors = true 	-- permitir 24.bit RG color en la terminal

-- Markdown
vim.cmd(' autocmd FileType markdown set foldexpr=NestedMarkdownFolds ')
