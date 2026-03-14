draw_self();

// 1. Gambar Tutorial Air (Jika Ada)
if(show_collectwater == true)
{
    draw_sprite(spr_collectwater, 0, x, y - 200);
    draw_sprite(spr_tutor_watercrop, 0, x - 100, y - 20);
}

// 2. Gambar Bubble Teks (Word)
if (player_near && word != "" && global.tutorial_index == 1) {
    draw_set_font(fnt_main);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var _bubble_w = sprite_get_width(spr_blank2);
    var _bubble_h = sprite_get_height(spr_blank2);
    
    var _draw_x = x - (_bubble_w / 2);
    var _draw_y = y - 200
    
    draw_sprite(spr_blank2, 0, _draw_x, _draw_y);
    draw_set_colour(c_black);
    
    var _text_y = _draw_y + (_bubble_h / 2);  
    draw_text(x, _text_y, word);
    
    // --- RESET ALIGNMENT ---
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}