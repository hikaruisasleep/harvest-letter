// 1. Gambar sprite kotak surat dulu
draw_self();

// 2. Simpan settingan alignment biar teks "Mail" rapi di tengah
draw_set_font(fnt_main);
draw_set_halign(fa_center); // Set rata tengah KHUSUS buat ini
draw_set_valign(fa_middle);


var label_y = y + 90; //jarak kebawah tulisan mail 
var label_x = x + 50;

// 3. Gambar kotak coklat background (disesuaikan dgn text)
var txt = "mail";
var w = string_width(txt) + 5;
var h = string_height(txt) + 2;

draw_set_color(make_color_rgb(101, 67, 33));
draw_rectangle(label_x - w/2, label_y - h/2, label_x + w/2, label_y + h/2, false);

// 4. Gambar Teks
draw_set_color(c_white);
draw_text(label_x, label_y, txt);

// --- PENTING: KEMBALIKAN SETTINGAN KE NORMAL ---
// Ini baris wajib supaya teks "Harvest potatoes" dll tidak rusak!
draw_set_halign(fa_left); 
draw_set_valign(fa_top);