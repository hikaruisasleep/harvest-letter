draw_self()

var icon_y = y - 60;

if(is_colliding){
	draw_set_font(fnt_main)
	draw_sprite(spr_blank, 0, x, icon_y)
	draw_set_colour(c_black)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_text(x, icon_y, word)
} else {
	if(is_ready){
		draw_sprite_ext(spr_dots, 0, x, icon_y, 1.5, 1.5, 0, c_white, 1)	// Egg placeholder
	}
}
