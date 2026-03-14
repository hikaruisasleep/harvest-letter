var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var click = mouse_check_button_pressed(mb_left);

global.popup_open = true;

var _list = (mode == "buy") ? items_buy : items_sell;

// Variabel Ukuran Sprite
var _ibg_w = sprite_get_width(spr_itembg);
var _ibg_h = sprite_get_height(spr_itembg);
var _min_w = sprite_get_width(spr_min);
var _min_h = sprite_get_height(spr_min);
var _plus_w = sprite_get_width(spr_plus);
var _plus_h = sprite_get_height(spr_plus);

// Posisi Mulai Grid Item (Jarak dari pojok kiri atas spr_shopbg)
var _start_x = bx + 50; 
var _start_y = by + 100;
var _sep_x = _ibg_w + 20; // Jarak antar item otomatis menyesuaikan lebar spr_itembg
var _sep_y = _ibg_h + 20;

for (var i = 0; i < array_length(_list); i++) {
    var _row = i div 3;
    var _col = i mod 3;
    var _ix = _start_x + (_col * _sep_x);
    var _iy = _start_y + (_row * _sep_y);
    var _it = _list[i];

    // 1. Klik Pilih Item (Kotak spr_itembg)
    if (click && point_in_rectangle(mx, my, _ix, _iy, _ix + _ibg_w, _iy + _ibg_h)) {
        selected_item = i;
        _it.qty = 1;
    }

    // 2. Klik Minus (Posisi di pojok kiri bawah itembg)
    var _min_x = _ix + 10;
    var _min_y = _iy + _ibg_h - _min_h - 10;
    if (click && point_in_rectangle(mx, my, _min_x, _min_y, _min_x + _min_w, _min_y + _min_h)) {
        _it.qty = max(1, _it.qty - 1);
    }

    // 3. Klik Plus (Posisi di pojok kanan bawah itembg)
    var _plus_x = _ix + _ibg_w - _plus_w - 10;
    var _plus_y = _iy + _ibg_h - _plus_h - 10;
    if (click && point_in_rectangle(mx, my, _plus_x, _plus_y, _plus_x + _plus_w, _plus_y + _plus_h)) {
        if (mode == "sell" && _it.name == "Carrot") {
            _it.qty = min(global.carrot, _it.qty + 1);
        } else {
            _it.qty = min(999, _it.qty + 1);
        }
    }
}

// 4. Klik Tombol Purchase/Sell (Tengah Bawah)
var _btn_w = sprite_get_width(spr_purchase);
var _btn_h = sprite_get_height(spr_purchase);
var _p_x = bx + (sw / 2) - (_btn_w / 2);
var _p_y = by + sh - _btn_h - 20;

if (click && point_in_rectangle(mx, my, _p_x, _p_y, _p_x + _btn_w, _p_y + _btn_h)) {
    if (selected_item != -1) {
        var _sel = _list[selected_item];
        var _total = _sel.price * _sel.qty;

        if (mode == "buy" && global.coins >= _total) {
            if (_sel.name == "Carrot's Seed") global.carrotseed = min(9999, global.carrotseed + _sel.qty);
            global.coins -= _total;
            _sel.qty = 1;
        } 
        else if (mode == "sell" && _sel.name == "Carrot" && global.carrot >= _sel.qty) {
            global.carrot -= _sel.qty;
            global.coins += _total;
            _sel.qty = 1;
        }
    }
}

// 5. Klik Tombol X (Pojok Kanan Atas)
var _ex = bx + sw - 50;
var _ey = by + 20;
if (click && point_in_rectangle(mx, my, _ex, _ey, _ex + 30, _ey + 30)) {
    global.popup_open = false;
    instance_destroy();
}