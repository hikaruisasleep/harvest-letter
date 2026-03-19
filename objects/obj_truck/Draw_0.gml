draw_self();

// Gambar Awan "Buy / Sell" jika Budi dekat dan UI belum terbuka
if (is_near && !instance_exists(obj_shop_ui)) {
    draw_set_font(fnt_main);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    // 1. Ambil ukuran awan
    var _bubble_w = sprite_get_width(spr_blank2);
    var _bubble_h = sprite_get_height(spr_blank2);
    
    // 2. Hitung posisi awan 
    var _draw_x = x - (_bubble_w / 2);
    var _draw_y = y - 200; // Ketinggian awan dari truk (bisa kamu atur naik/turun di sini)
    
    draw_sprite(spr_blank2, 0, _draw_x, _draw_y); 
    
    // 3. Posisi teks di tengah awan
    draw_set_color(c_black);
    var _text_x = x;
   
    var _text_y = _draw_y + (_bubble_h / 2) 
    
    draw_text(_text_x, _text_y, "Buy / Sell"); 
    
    // Reset Alignment agar tidak merusak UI lain
    draw_set_halign(fa_left); 
    draw_set_valign(fa_top);
}