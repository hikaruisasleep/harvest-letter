/// @description UI Shop - Fixed Logic & Connection

// --- 1. SETTING DASAR (RELATIF) ---
var _w = display_get_gui_width();
var _h = display_get_gui_height();
var _sw = _w * 0.45; 
var _sh = _h * 0.45; 
var _bx = (_w - _sw) / 2;
var _by = (_h - _sh) / 2;

// --- 2. GAMBAR WADAH & OUTLINE ---
draw_set_alpha(0.8); draw_set_color(c_black);
draw_rectangle(_bx, _by, _bx + _sw, _by + _sh, false);
draw_set_alpha(1); draw_set_color(c_white);
draw_rectangle(_bx, _by, _bx + _sw, _by + _sh, true);

// --- 3. TOMBOL EXIT (X) ---
var _ex = _bx + _sw - 20, _ey = _by + 20;
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var _hover = point_distance(mx, my, _ex, _ey) < 15;

draw_set_color(_hover ? c_maroon : c_red);
draw_circle(_ex, _ey, 15, false);
draw_set_color(c_white); draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text(_ex, _ey, "X");

if (mouse_check_button_pressed(mb_left) && _hover) {
    if (held_item != -1 && held_from == "player") global.inv_player[held_index] = held_item;
    global.popup_open = false; 
    instance_destroy();
    exit; // Berhenti menggambar jika objek dihancurkan
}

// --- 4. KONTEN (COINS) ---
draw_set_halign(fa_left); draw_set_valign(fa_top);
draw_set_color(c_yellow); 
draw_text(_bx + 15, _by + 10, "Coins: " + string(global.coins));

var click = mouse_check_button_pressed(mb_left);
var release = mouse_check_button_released(mb_left);

// --- 5. LOOPING SLOT (0 = Inventory, 1 = Toko) ---
for (var i = 0; i < 2; i++) {
    var _type_y = _by + 80 + (i * 140);
    draw_set_color(c_white);
    draw_text(_bx + 20, _type_y - 25, i == 0 ? "Inventory (Preview)" : "Toko (Shop)");
    
    var _list = (i == 0) ? global.inv_player : items_toko;
    
    for (var j = 0; j < array_length(_list); j++) {
        var _sx = _bx + 20 + (j * (slot_size + gap));
        var _sy = _type_y;
        
        // Warna Outline (Hijau untuk tas, Kuning untuk toko)
        draw_set_color(i == 0 ? c_green : c_yellow);
        draw_rectangle(_sx, _sy, _sx + slot_size, _sy + slot_size, true);
        
        var _it = _list[j];
        
        // Gambar Item & Harga jika slot tidak kosong
        if (_it != -1 && _it != held_item) {
            if (variable_struct_exists(_it, "sprite")) {
                draw_sprite_stretched(_it.sprite, 0, _sx + 5, _sy + 5, slot_size - 10, slot_size - 10);
            }
            draw_set_color(c_white); draw_set_halign(fa_center);
            draw_text(_sx + (slot_size/2), _sy + slot_size + 5, "$" + string(_it.price));
            draw_set_halign(fa_left);
        }

        // Logic Drag (Klik)
        if (click && point_in_rectangle(mx, my, _sx, _sy, _sx + slot_size, _sy + slot_size)) {
            if (_it != -1) { 
                held_item = _it; 
                held_from = (i == 0) ? "player" : "toko"; 
                held_index = j; 
                if (i == 0) global.inv_player[j] = -1; 
            }
        }
        
        // --- LOGIC BELI & JUAL (Lepas Mouse) ---
        if (release && point_in_rectangle(mx, my, _sx, _sy, _sx + slot_size, _sy + slot_size)) {
            if (held_item != -1) {
                // BELI: Dari Toko ke Inventory
                if (i == 0 && held_from == "toko" && global.coins >= held_item.price) {
                    global.coins -= held_item.price;
                    
                    // Update variabel global bibit
                    if (held_item.name == "Carrot Seed") global.carrotseed += 1;

                    // Cari slot kosong pertama
                    var _placed = false;
                    for (var k = 0; k < array_length(global.inv_player); k++) {
                        if (global.inv_player[k] == -1) {
                            global.inv_player[k] = held_item;
                            _placed = true;
                            break;
                        }
                    }
                    held_item = -1;
                }
                // JUAL: Dari Inventory ke Toko
                else if (i == 1 && held_from == "player") {
                    global.coins += held_item.price;
                    if (held_item.name == "Carrot Seed") global.carrotseed = max(0, global.carrotseed - 1);
                    held_item = -1;
                }
            }
        }
    }
}

// --- 6. DRAG VISUAL (HANYA GAMBAR JIKA ADA ITEM) ---
if (held_item != -1) {
    if (variable_struct_exists(held_item, "sprite")) {
        draw_sprite_stretched(held_item.sprite, 0, mx - 20, my - 20, 40, 40);
    }
    // Kembalikan item jika dilepas di luar area manapun
    if (release) {
        if (held_from == "player") global.inv_player[held_index] = held_item;
        held_item = -1;
    }
}

// Reset Drawing
draw_set_color(c_white); draw_set_alpha(1);