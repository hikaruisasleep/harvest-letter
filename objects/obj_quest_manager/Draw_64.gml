if (display_alpha <= 0) exit; 

var _base_x = 50; 
var _base_y = 150; 

draw_set_alpha(display_alpha);
draw_sprite(spr_checkbox_empty, 0, _base_x, _base_y);

// --- PENGATURAN FONT & WARNA ---
draw_set_font(fnt_task); 

var _color_brown = make_color_rgb(105, 65, 35); 
draw_set_color(_color_brown); 

draw_set_halign(fa_left);
draw_set_valign(fa_middle); 

// --- PENGATURAN POSISI TEKS ---
var _text_x = _base_x + 112; 
var _text_y = _base_y + 44; 

// Gambar Teksnya (Tersambung dengan sistem baru)
draw_text(_text_x, _text_y, display_text); 

// --- GAMBAR CENTANG (DIPERKECIL) ---
// (Tersambung dengan sistem baru)
if (display_done == true) {
    draw_sprite_ext(spr_checkmark, 0, _base_x + 15, _base_y + 10, 0.6, 0.6, 0, c_white, 1);
}

draw_set_alpha(1);