depth = -400;
// Step Event
if (place_meeting(x, y, obj_budi)) {
    // STILL colliding → keep special state
    collide = true;
    sprite_index = spr_text_box;
    font = fnt_main;
} else {
    // NOT colliding → return to normal
    collide = false;
    sprite_index = spr_dots;   // your default sprite
    font = fnt_main;          // your normal font
}

// 1. Cek Kondisi Jam: 02:00 PM (14) ATAU 04:00 PM (16)
if (global.jam_sekarang == 14) || (global.jam_sekarang == 16)
{
    // 2. Cek Kondisi Menit: Kelipatan 20 (00, 20, 40) DAN Flag Pergantian
    // Menggunakan variabel global.menit_sekarang dari obj_cycle_time
    if ((global.menit_sekarang % 20 == 0) && (can_change_word == true))
    {
        // Ganti ke indeks kata berikutnya secara berputar (cycle)
        word_index_current = (word_index_current + 1) % array_length(word_list);
        
        // Perbarui kata yang akan digambar
        word_to_display = word_list[word_index_current];
        
        // Set flag ke false agar pergantian hanya terjadi sekali pada menit ini
        can_change_word = false; 
    }
    // 3. Reset Flag: Jika menit BUKAN kelipatan 20, reset flag agar siap untuk pergantian berikutnya
    else if (global.menit_sekarang % 20 != 0)
    {
        can_change_word = true; 
    }
} 
// 4. Reset Default: Jika jam BUKAN 14 atau 16
else 
{
    // Pastikan flag direset untuk jam yang akan datang
    can_change_word = true;
    
    // Kembalikan kata yang ditampilkan ke kata pertama (indeks 0) di luar jam khusus
    word_index_current = 0; 
    word_to_display = word_list[word_index_current];
}