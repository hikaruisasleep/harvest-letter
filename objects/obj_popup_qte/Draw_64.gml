// --- 1. TENTUKAN TITIK TENGAH LAYAR GUI ---
var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;

// --- 2. GAMBAR BACKGROUND KOTAK KUNING ---
// JANGAN pakai draw_self(), karena draw_self pakai x/y room.
// Gunakan ini agar muncul pas di tengah layar:
draw_sprite(sprite_index, image_index, xx, yy); 

draw_set_font(fnt_popup);

// --- SETTING JARAK ANTAR BARIS (Vertikal) ---
var jarak_per_baris = 50;
var total_tinggi = array_length(tugas_list) * jarak_per_baris;

// GANTI 'y' jadi 'yy'
var y_awal = yy - (total_tinggi / 2) + 75;

// --- LOOPING: GAMBAR SEMUA KATA ---
for (var i = 0; i < array_length(tugas_list); i++) {
    
    var posisi_y = y_awal + (i * jarak_per_baris);
    
    // KATA SELESAI (sebelum kata aktif)
    if (i < index_sekarang) {
        draw_set_color(c_green);
        draw_set_alpha(0.5);
        draw_set_halign(fa_center); 
        
        // GANTI 'x' jadi 'xx'
        draw_text(xx, posisi_y, tugas_list[i]);
    }

    // KATA SEDANG AKTIF (Pengetikan per Huruf)
    else if (i == index_sekarang) {
        var target = tugas_list[i];
        var typed = obj_budi.typedWord;

        var len_target = string_length(target);
        var len_typed = string_length(typed);

        // --- Hitung total lebar manual per huruf ---
        var total_width = 0;
        for (var j = 1; j <= len_target; j++) {
            total_width += string_width(string_char_at(target, j)); 
        }

        // Pemusatan Teks: Gunakan 'xx' sebagai patokan tengah
        var start_x = xx - total_width * 0.5; 
        var current_x = start_x;

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
        
        draw_set_halign(fa_center); 
    }

    // KATA BERIKUTNYA
    else {
        draw_set_color(c_dkgray);
        draw_set_alpha(0.7);
        draw_set_halign(fa_center);
        
        // GANTI 'x' jadi 'xx'
        draw_text(xx, posisi_y, tugas_list[i]);
    }
}

// Reset tampilan Global setelah loop selesai
draw_set_halign(fa_left); 
draw_set_valign(fa_top);
draw_set_font(fnt_main);
draw_set_color(c_black);
draw_set_alpha(1);

// --- Gambar Countdown ---
if (alarm[0] > 0)
{
    var _waktu_sisa = ceil(alarm[0] / game_get_speed(gamespeed_fps));
    var _display_text = string(_waktu_sisa);

    draw_set_font(fnt_countdown);
    
   // GANTI 'x' dan 'y' jadi 'xx' dan 'yy' agar ikut di tengah layar
    var _new_x = xx - 50; 
    var _new_y = yy + 275; 
    var _scale = 2; 

    draw_set_halign(fa_left); 

    draw_text_transformed(_new_x, _new_y, _display_text, _scale, _scale, 0);
}