-- Configuración para los archivos markdown

local bo = vim.bo 	-- opciones de buffers
local wo = vim.wo 	-- opciones de windows
local o = vim.o 	-- opciones

o.cursorcolumn = false

-- Ancho de fichero
local maxwidth = 80
o.textwidth = maxwidth
bo.textwidth = maxwidth
wo.colorcolumn = tostring(maxwidth)

wo.conceallevel = 0



