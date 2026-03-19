draw_self()
if(is_colliding){
	draw_set_font(fnt_main)
	draw_sprite(spr_blank, 0, x, y - 320)
	draw_set_colour(c_black)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_text(x, y - 320, word)
} else {
	if(stage == 0){
		draw_sprite_ext(spr_grass, 0, x, y - 320, 0.4, 0.4, 0, c_white, 1)	
	} else if (stage == 1){
        if (day_counter >= 2) {
            draw_sprite_ext(spr_egg, 0, x, y - 320, 1, 1, 0, c_white, 1) 
        } else {
            // Optional: Draw nothing or a "waiting" icon when day_counter < 2
        }
    }
}
