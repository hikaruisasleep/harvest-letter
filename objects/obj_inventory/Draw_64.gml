// --- 1. SETUP POSISI & BACKGROUND ---
var box_x = display_get_gui_width() - 600 - 1; 
var box_y = display_get_gui_height() - 249 - 35; 

draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 2. SETUP LOOPING SLOT ---
var start_x = box_x + 90;  // Posisi awal X
var start_y = box_y + 160; // Posisi awal Y
var gap_x   = 110;         // Jarak antar slot

// --- 3. LOOPING ISI TAS (ARRAY) ---
for (var i = 0; i < array_length(global.inv_player); i++) {
    
    // Ambil data item dari slot ke-i
    var _item = global.inv_player[i];
    
    // Cek: Jika slot TIDAK KOSONG (-1 artinya kosong)
    if (_item != -1) {
        
        // Hitung posisi gambar berdasarkan urutan (i)
        var _draw_x = start_x + (i * gap_x);
        var _draw_y = start_y;
        
        // A. GAMBAR SPRITE ITEM
        // Safety Check: Pastikan item punya data sprite valid
        if (variable_struct_exists(_item, "sprite") && _item.sprite != -1) {
            draw_sprite(_item.sprite, 0, _draw_x, _draw_y);
        } 
        else {
            // Jika error/sprite tidak ketemu, gambar tanda tanya
            draw_text(_draw_x, _draw_y, "?"); 
        }
        
        // B. GAMBAR NAMA ITEM
        draw_set_halign(fa_center); // Rata Tengah
        draw_set_color(c_white);
        
        // Geser teks ke kanan (+55) dan ke bawah (+40) agar pas di tengah slot
        draw_text(_draw_x + 55, _draw_y + 40, _item.name);
        
        // C. (OPSIONAL) FITUR BADGE JUMLAH
        // Jika nanti kamu update sistem agar item bisa di-stack (punya quantity)
        if (variable_struct_exists(_item, "quantity")) {
             var badge_x = _draw_x + 55;
             var badge_y = _draw_y + 70;
             
             draw_set_color(c_orange);
             draw_circle(badge_x, badge_y, 14, false);
             
             draw_set_color(c_white);
             draw_set_valign(fa_middle);
             draw_text(badge_x, badge_y, string(_item.quantity));
        }

        // Reset Settingan Gambar (Wajib)
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(c_white);
    }
}