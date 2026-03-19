// --- 1. HITUNG KOORDINAT TENGAH (Wajib Sinkron dengan Draw GUI) ---
var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;

var _bgw = sprite_get_width(spr_upgradebg);
var _bgh = sprite_get_height(spr_upgradebg);

var bx = xx - (_bgw / 2);
var by = yy - (_bgh / 2);

var _cx = xx;

// --- 2. INPUT MOUSE (Gunakan Koordinat GUI) ---
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var click = mouse_check_button_pressed(mb_left);

// --- 3. SETTING TOMBOL ---
var _max = variable_global_exists("max_upgrade") ? global.max_upgrade : 5;
var _btn_w = 180; 
var _btn_h = 45;
var _btn_x1 = _cx - (_btn_w / 2); 
var _btn_x2 = _cx + (_btn_w / 2); 

// --- 4. LOGIKA KLIK QTE UPGRADE ---
var _qte_cy = by + 220; 
var _btn_qte_y = _qte_cy + 75; // Nama variabel disesuaikan dengan kode Draw

if (global.upgrade_qte_level < _max) {
    if (click && point_in_rectangle(mx, my, _btn_x1, _btn_qte_y, _btn_x2, _btn_qte_y + _btn_h)) {
        if (global.coins >= global.price_qte) {
            scr_coin_add(-global.price_qte);
            global.upgrade_qte_level += 1;
            global.price_qte += 400; 
            // Opsional: tambahkan sound_play di sini
        }
    }
}

// --- 5. LOGIKA KLIK WATERBUCKET UPGRADE ---
var _wat_cy = by + 470; 
var _btn_wat_y = _wat_cy + 75; // Nama variabel disesuaikan dengan kode Draw

if (global.upgrade_water_level < _max) {
    if (click && point_in_rectangle(mx, my, _btn_x1, _btn_wat_y, _btn_x2, _btn_wat_y + _btn_h)) {
        if (global.coins >= global.price_water) {
            scr_coin_add(-global.price_water);
            global.upgrade_water_level += 1;
            global.water_max_capacity += 1; 
            global.price_water += 400; 
        }
    }
}