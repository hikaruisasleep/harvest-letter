// --- DRAW GUI EVENT ---

// 1. Ambil Ukuran Layar & Titik Tengah
var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();
var center_x = screen_w / 2;
var center_y = screen_h / 2;

// 2. Gambar Suratnya (Background)
draw_sprite(spr_annie_letter, 0, center_x, center_y);

// --- 3. GAMBAR TOMBOL DAN TULISAN (BAGIAN INI YANG BARU) ---

draw_set_font(fnt_main); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// -- Setting Ukuran Tombol --
// Ganti angka 80 kalau mau makin lebar, ganti 25 kalau mau makin tebal
var half_w = 80; 
var half_h = 25; 

// -- Setting Posisi Tombol --
// Kita kunci posisinya di bawah tengah (y + 55)
var button_y = center_y + 55; 

// Gambar Kotak Kuning (Rumusnya otomatis ngikutin variable di atas)
draw_set_color($FF123960); 
draw_roundrect(center_x - half_w, button_y - half_h, center_x + half_w, button_y + half_h, false);

// Gambar Teks (Posisinya pas di tengah kotak tadi)
draw_set_color(c_white);
draw_text(center_x, button_y, "Open It");

// -----------------------------------------------------------

// 4. Reset Alignment (Wajib!)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);