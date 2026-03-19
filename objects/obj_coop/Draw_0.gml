draw_self()
if(is_colliding){
	draw_set_font(fnt_main)
	draw_sprite(spr_blank, 0, x, y - 60)
	draw_set_colour(c_black)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	
	var display_text = word;
	if(stage == 0) display_text = "add layer/broiler";
	else if(coop_type != undefined) display_text = word + " " + coop_type;
	
	draw_text(x, y - 60, display_text)
} else {
	if(stage == 1){
		draw_sprite(spr_blank, 0, x, y - 40)
		draw_set_colour(c_black)
		draw_set_halign(fa_middle)
		draw_set_valign(fa_center)
		draw_text(x, y - 40, "hungry")
	}	
}
