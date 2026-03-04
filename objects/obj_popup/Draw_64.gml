// --- HITUNG TITIK TENGAH LAYAR GUI ---
var gui_w_center = display_get_gui_width() / 2;
var gui_h_center = display_get_gui_height() / 2;

// --- GAMBAR BACKGROUND KOTAK KUNING DI TENGAH ---
// JANGAN PAKAI draw_self();
// Gunakan draw_sprite di koordinat tengah yang sudah dihitung
draw_sprite(sprite_index, image_index, gui_w_center, gui_h_center);

depth = -22;

draw_set_font(fnt_popup);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --- SETTING JARAK ANTAR BARIS ---
var jarak_per_baris = 50;
var total_tinggi = array_length(tugas_list) * jarak_per_baris;

// UBAH INI: Gunakan gui_h_center sebagai patokan, bukan 'y'
var y_awal = gui_h_center - (total_tinggi / 2) + 10; 

// --- LOOPING: GAMBAR SEMUA KATA ---
for (var i = 0; i < array_length(tugas_list); i++) {
    
    var posisi_y = y_awal + (i * jarak_per_baris);
    
    // KATA SELESAI (sebelum kata aktif)
    if (i < index_sekarang) {
        draw_set_color(c_green);
        draw_set_alpha(0.5);
        // UBAH INI: Gunakan gui_w_center sebagai patokan, bukan 'x'
        draw_text(gui_w_center, posisi_y, tugas_list[i]);
    }

    // KATA SEDANG AKTIF
    else if (i == index_sekarang) {
        var target = tugas_list[i];
        var typed  = obj_budi.typedWord;

        var len_target = string_length(target);
        var len_typed  = string_length(typed);

        // --- Hitung total lebar manual per huruf (kerning asli) ---
        var total_width = 0;
        for (var j = 1; j <= len_target; j++) {
            total_width += string_width(string_char_at(target, j));
        }

        // UBAH INI: Gunakan gui_w_center sebagai patokan
        var start_x = gui_w_center - total_width * 0.5;
        var current_x = start_x;

        // Panah di kiri (posisi fix)
        draw_set_color(c_black);
        draw_text(start_x - 25, posisi_y, ">");

        // --- Gambar huruf per huruf dengan posisi akurat ---
        for (var j = 1; j <= len_target; j++) {
            var ch = string_char_at(target, j);
            var isTyped = (j <= len_typed);
            var typedCh = isTyped ? string_char_at(typed, j) : "";

            // Warna huruf
            if (!isTyped) {
                draw_set_color(c_black);
            } else if (typedCh == ch) {
                draw_set_color(c_green);
            } else {
                draw_set_color(c_red);
            }

            draw_text(current_x, posisi_y, ch);

            current_x += string_width(ch);
        }
    }
    // KATA BERIKUTNYA
    else {
        draw_set_color(c_dkgray);
        draw_set_alpha(0.7);
        // UBAH INI: Gunakan gui_w_center sebagai patokan
        draw_text(gui_w_center, posisi_y, tugas_list[i]);
    }
}

// Reset tampilan
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_main);
draw_set_color(c_black);
draw_set_alpha(1);