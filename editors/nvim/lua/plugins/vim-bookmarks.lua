g.bookmark_highlight_lines = 1

g.bookmark_display_annotation = 1
g.bookmark_auto_close = 1

g.bookmark_center = 1

-- g.bookmark_location_list = 1

-- TODO estaría way hacer funcionar este comando pero, tengo que investigar
-- mir = {}
-- mir.show_bookmarks = true

-- vim.api.nvim_create_user_command(

-- 'Miriam',
-- function()
-- 	if mir.show_bookmarks then
-- 		print "booksmarks activados, los oculto"
		
-- 		g.bookmark_sign = ''
-- 		g.bookmark_annotation_sign = ''
-- 		mir.show_bookmarks = false
	
-- 	elseif mir.show_bookmarks == false then
-- 		print "booksmarks ocultos, los muestro"
		
-- 		g.bookmark_sign = '⚑'
-- 		g.bookmark_annotation_sign = '☰'
	
-- 		mir.show_bookmarks = true
-- 	else 
-- 		print ":s :S no se que está pasando"
-- 	end

-- end,
-- {bang = true, desc = 'Mostrar/ocultar booksmarks'}

-- )
