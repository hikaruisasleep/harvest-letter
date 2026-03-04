// 1. Gambar sprite icon bukunya dulu
draw_self();

// 2. Settingan Font & Alignment
draw_set_font(fnt_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --- ATUR POSISI DI SINI ---
var label_y = y + 83; 

// Mau geser ke KANAN? Pakai tanda TAMBAH (+)
// Coba angka 10 dulu. Kalau kurang kanan, ganti jadi 20 atau 30.
var label_x = x + 30; 

// 3. Gambar kotak coklat background
var txt = "to do";
var w = string_width(txt) + 20;
var h = string_height(txt) + 2;

draw_set_color(make_color_rgb(101, 67, 33));

// PERHATIKAN: Di sini kita pakai 'label_x', BUKAN 'x' lagi
draw_rectangle(label_x - w/2, label_y - h/2, label_x + w/2, label_y + h/2, false);

// 4. Gambar Teks
draw_set_color(c_white);

// PERHATIKAN: Di sini juga pakai 'label_x'
draw_text(label_x, label_y, txt);

// --- RESET SETTINGAN (WAJIB) ---
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);