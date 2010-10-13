colorscheme ir_black

if has("gui_macvim")
	set fuoptions=maxvert,maxhorz
	set guifont=Monaco:h14
	set guioptions-=T
	set stal=2
elseif has("gui_win32")
	set guifont=Consolas:h12
	set guioptions-=T
	set guioptions-=m
end

set anti
set columns=140 lines=40
set gtl=%N\:\ %t gtt=%F
