draw_self();

if(show_collectwater == true)
{
	draw_sprite(spr_collectwater, 0, x, y - 200);

	draw_sprite(spr_tutor_watercrop, 0, x - 100, y - 20);
}


if (player_near && word != "" && global.tutorial_index = 1) {
    draw_set_font(fnt_main);
    
    draw_sprite(spr_blank, 0, x, y - 110);
    
    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(x, y - 110, word);
}