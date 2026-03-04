depth = -y; //Sprite Layering

if (!variable_instance_exists(id, "face")) {
    face = 0; 
}
// Safety check (dari kode baru)
if (!variable_instance_exists(id, "spd")) {
    spd = 1; 
}

//SHOP
// Cek Jarak ke Truk
if (instance_exists(obj_truck)) {
    var _dist = point_distance(x, y, obj_truck.x, obj_truck.y);
    
    if (_dist < 80) {
        nearby_shop = true;
    } else {
        nearby_shop = false;
        if (keyboard_string == "shop") keyboard_string = ""; 
    }
}

if (nearby_shop && !global.popup_open) {
    var _txt = string_copy(keyboard_string, string_length(keyboard_string)-3, 4);
    
    if (string_lower(_txt) == "shop") {
        global.popup_open = true; // Status Game: Freeze
        keyboard_string = "";     // Reset Keyboard
        instance_create_depth(0, 0, -9999, obj_shop_ui); // Munculkan UI Toko
    }
}

// POPUP FREEZE
if (global.popup_open) {
    // Matikan movement physics
    hspeed = 0;
    vspeed = 0;
    speed = 0;
    // Note: spd tidak di-nol-kan agar tidak bug saat unfreeze

    image_speed = 0;
    
    // Set frame diam sesuai arah wajah
    if (face == 0) image_index = 0;
    if (face == 1) image_index = 11;
    if (face == 2) image_index = 7;
    if (face == 3) image_index = 3;

    exit; // stop the rest of Step
}

// BAGIAN 3: MOVEMENT & SPRITE ANIMATION

var _hspd = 0;
var _vspd = 0;

// --- MOVEMENT ---
var _kanan = keyboard_check(vk_right);
var _kiri  = keyboard_check(vk_left);
var _atas  = keyboard_check(vk_up);
var _bawah = keyboard_check(vk_down);

_hspd = (_kanan - _kiri) * spd;
_vspd = (_bawah - _atas) * spd;

x += _hspd;
y += _vspd;

// --- ANIMATION ---
image_xscale = 1; 

if (_hspd != 0 || _vspd != 0) {
    image_speed = 0.4;

    if (_vspd > 0) face = 0;
    if (_vspd < 0) face = 1;
    if (_hspd > 0) face = 2;
    if (_hspd < 0) face = 3;

    if (face == 0) { // Jalan Bawah
        if (image_index < 1 || image_index > 3) image_index = 1;
    }
    else if (face == 1) { // Jalan Atas
        if (image_index < 12 || image_index > 14) image_index = 12;
    }
    else if (face == 2) { // Jalan Kanan
        if (image_index < 8 || image_index > 11) image_index = 8;
    }
    else if (face == 3) { // Jalan Kiri
        if (image_index < 4 || image_index > 7) image_index = 4;
    }

} else {
    // B. JIKA DIAM (STOP)
    image_speed = 0;
    
    // Paksa frame ke posisi diam berdasarkan arah terakhir (face)
    if (face == 0) image_index = 0;  // Stop hadap Bawah
    if (face == 1) image_index = 11; // Stop hadap Atas (Frame 10)
    if (face == 2) image_index = 7;  // Stop hadap Kanan (Frame 7)
    if (face == 3) image_index = 3;  // Stop hadap Kiri (Frame 4)
}