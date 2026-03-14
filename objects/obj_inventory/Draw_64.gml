// --- 1. POSISI DASAR ---
var box_w = 600;
var box_h = 249;
var box_x = display_get_gui_width() - box_w - 1; 
var box_y = display_get_gui_height() - box_h - 35; 

// --- 2. GAMBAR BACKGROUND ---
draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 3. SISTEM AUTO-SLOT ---
var _slot_index = 0; 

// FUNGSI HELPER (Tetap sama, tapi kita pastikan alignment aman)
var draw_item_slot = function(_spr, _qty, _bx, _by, _index) {
    var _ix = _bx + 90 + (_index * 110);
    var _iy = _by + 160;
    
    // Gambar Icon Item
    draw_sprite(_spr, 0, _ix, _iy);
    
    // Gambar Badge Angka (Jika lebih dari 1 agar tidak menutupi gambar)
    if (_qty > 0) {
        var _bx_badge = _ix + 55;
        var _by_badge = _iy + 70;
        
        draw_set_color(c_orange); 
        draw_circle(_bx_badge, _by_badge, 14, false);
        
        draw_set_color(c_white);
        draw_set_font(fnt_main);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(_bx_badge, _by_badge, string(_qty));
        
        // Reset Alignment segera setelah menggambar teks
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}

// --- 4. LOGIKA EKSEKUSI (Hanya gambar satu slot per jenis item) ---

// A. SLOT WORTEL (Hasil Panen)
if (global.carrot > 0) {
    draw_item_slot(spr_carrot, global.carrot, box_x, box_y, _slot_index);
    _slot_index++;
}

// B. SLOT BIBIT WORTEL (Stacking)
// Kita tidak perlu loop global.inv_player jika tujuannya hanya menampilkan jumlah bibit
if (global.carrotseed > 0) {
    draw_item_slot(spr_carrot_seed, global.carrotseed, box_x, box_y, _slot_index);
    _slot_index++;
}

if (global.waterbucket > 0) {
    draw_item_slot(spr_waterbucket, global.waterbucket, box_x, box_y, _slot_index);
    _slot_index++;
}

for(var i = 0; i < ds_list_size(items); i++){
    var _item_obj = ds_list_find_value(items, i);
    var _spr = object_get_sprite(_item_obj);
    
    if (sprite_exists(_spr)) {
        draw_item_slot(_spr, 0, box_x, box_y, _slot_index);
        _slot_index++;
    }
}

// Reset Warna Final
draw_set_color(c_white);