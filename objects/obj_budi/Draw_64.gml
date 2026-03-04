// HANYA GAMBAR JIKA POPUP TIDAK BUKA (FALSE)
if (variable_global_exists("popup_open") && global.popup_open == false) {

    // --- KODE LAMA KAMU ---
    var _x = display_get_gui_width() / 2;
    var _y = display_get_gui_height() - 80;
    
    // Background Hitam
    var _lebar = string_width(keyboard_string) + 20;
    if (_lebar < 50) _lebar = 50; // Minimal lebar biar gak gepeng
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(_x - _lebar/2, _y, _x + _lebar/2, _y+30, false);
    draw_set_alpha(1);
    
    // Teks Ketikan
    draw_set_halign(fa_center);
    draw_set_color(c_yellow);
    draw_text(_x, _y+5, keyboard_string);
    draw_set_halign(fa_left); // Reset rata kiri
}