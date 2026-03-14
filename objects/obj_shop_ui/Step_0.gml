// 1. SETUP KOORDINAT UNTUK TOMBOL X
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();
var _spr_w = sprite_get_width(spr_shop);
var _spr_h = sprite_get_height(spr_shop);

var _box_x = (_gui_w - _spr_w) / 2;
var _box_y = (_gui_h - _spr_h) / 2;

// Area Hitbox Tombol "X"
var _close_x1 = _box_x + _spr_w - 55;
var _close_y1 = _box_y + 15;
var _close_x2 = _box_x + _spr_w - 15;
var _close_y2 = _box_y + 55;

// 2. DETEKSI TUTUP SHOP (Lewat Klik "X" atau ESC)
var _klik_tutup = (mouse_check_button_pressed(mb_left) && point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), _close_x1, _close_y1, _close_x2, _close_y2));
var _esc_tutup = keyboard_check_pressed(vk_escape);

if (_klik_tutup || _esc_tutup) {
    
    // Kembalikan item jika player sedang memegang item saat shop ditutup
    if (held_item != -1 && held_from == "player") {
        global.inv_player[held_index] = held_item;
    }
    
    global.popup_open = false;
    instance_destroy();
}