draw_self();
if (instance_exists(obj_budi) && obj_budi.nearby_shop == true) {
    
    var _bubble_x = x;
    
    // Floating effect
    var _float = dsin(current_time / 5) * 5; 
    var _bubble_y = y - 100 + _float;

    // Gambar Awan/Balon Kata (spr_blank)
    draw_sprite(spr_blank, 0, _bubble_x, _bubble_y);

    // Setting Teks
    draw_set_font(fnt_main);
    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_text(_bubble_x, _bubble_y, "shop");

    // Reset alignment dan warna agar UI lain tidak rusak
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_colour(c_white);
}