// --- 1. POSISI DASAR ---
var box_w = 600;
var box_h = 249;
var box_x = display_get_gui_width() - box_w - 1; 
var box_y = display_get_gui_height() - box_h - 35; 

// --- 2. GAMBAR BACKGROUND ---
draw_sprite(spr_inventory, 0, box_x, box_y);

// --- 3. SISTEM AUTO-SLOT ---
var _slot_index = 0; 

// FUNGSI HELPER (Sudah rapi & aman)
var draw_item_slot = function(_spr, _qty, _bx, _by, _index) {
    var _ix = _bx + 90 + (_index * 110);
    var _iy = _by + 160;
    
    // Gambar Icon Item
    if (sprite_exists(_spr)) {
        draw_sprite(_spr, 0, _ix, _iy);
    }
    
    // Gambar Badge Angka (Jika lebih dari 1)
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
        
        // Reset Alignment
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}

// --- 4. GAMBAR ITEM STATIS (Pusat Data global) ---

// A. Wortel (Hasil Panen)
if (global.carrot > 0) {
    draw_item_slot(spr_carrot, global.carrot, box_x, box_y, _slot_index);
    _slot_index++;
}

// B. Bibit Wortel (Stacking)
if (global.carrotseed > 0) {
    draw_item_slot(spr_carrot_seed, global.carrotseed, box_x, box_y, _slot_index);
    _slot_index++;
}

// C. Kentang (Hasil Panen)
if (global.potato > 0) {
    draw_item_slot(spr_potato, global.potato, box_x, box_y, _slot_index);
    _slot_index++;
}

// D. Bibit Kentang (Stacking)
if (global.potatoseed > 0) {
    draw_item_slot(spr_potato_seed, global.potatoseed, box_x, box_y, _slot_index);
    _slot_index++;
}

// E. Rumput (Cow Feed)
if (global.grass > 0) {
    draw_item_slot(spr_grass, global.grass, box_x, box_y, _slot_index);
    _slot_index++;
}

// F. Susu (Product)
if (global.milk > 0) {
    draw_item_slot(spr_milk, global.milk, box_x, box_y, _slot_index);
    _slot_index++;
}

// G. Telur (Product)
if (global.egg > 0) {
    draw_item_slot(spr_egg, global.egg, box_x, box_y, _slot_index);
    _slot_index++;
}

// H. Ember Air
if (global.waterbucket > 0) {
    draw_item_slot(spr_waterbucket, global.waterbucket, box_x, box_y, _slot_index); // Pastikan nama spritenya spr_water_bucket
    _slot_index++;
}

// --- 5. GAMBAR ITEM DINAMIS (Dari DS List) ---
for(var i = 0; i < ds_list_size(items); i++) {
    var _item_obj = ds_list_find_value(items, i);
    
    // Pengaman: Pastikan itu adalah object sebelum mengambil spritenya
    if (object_exists(_item_obj)) {
        var _spr = object_get_sprite(_item_obj);
        if (sprite_exists(_spr)) {
            draw_item_slot(_spr, 0, box_x, box_y, _slot_index);
            _slot_index++;
        }
    }
}

// Reset Warna Final
draw_set_color(c_white);