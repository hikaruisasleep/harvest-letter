// --- DRAW GUI EVENT ---

// 1. Ambil Ukuran Layar & Titik Tengah
var screen_w = display_get_gui_width();
var screen_h = display_get_gui_height();
var center_x = screen_w / 2;
var center_y = screen_h / 2;

// 2. Gambar Suratnya (Background) - INI TETAP DI TENGAH
draw_sprite(spr_annie_reward, 0, center_x, center_y);

// --- 3. GAMBAR TOMBOL DAN TULISAN ---

draw_set_font(fnt_button); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// -- Setting Ukuran Tombol --
var half_w = 110; 
var half_h = 25; 

// -- Setting Posisi Tombol (BAGIAN INI YANG DIUBAH) --
var button_y = center_y + 230; 

// Kita buat posisi X khusus untuk tombol
// center_x - 150 artinya: Dari tengah, geser ke kiri 150 pixel
var button_x = center_x - 130; 

// Gambar Kotak Kuning (Pakai variable 'button_x')
draw_set_color($FF123960); 
draw_roundrect(button_x - half_w, button_y - half_h, button_x + half_w, button_y + half_h, false);

// Gambar Teks (Pakai variable 'button_x')
draw_set_color(c_white);
draw_text(button_x, button_y, "collect");


//----------------------------------------------------------

// 4. Reset Alignment (Wajib!)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);





