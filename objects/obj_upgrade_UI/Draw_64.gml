// --- 1. TENTUKAN TITIK TENGAH LAYAR GUI ---
var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;

var _bgw = sprite_get_width(spr_upgradebg);
var _bgh = sprite_get_height(spr_upgradebg);

var bx = xx - (_bgw / 2);
var by = yy - (_bgh / 2);

// --- 2. MULAI MENGGAMBAR ---
draw_sprite(spr_upgradebg, 0, bx, by);

draw_set_halign(fa_center);
draw_set_font(fnt_main); 

var _cx = xx; 

var color_brown_upgradeui = make_color_rgb(94, 62, 41);   
var color_yellow_upgradeui = make_color_rgb(243, 174, 38);  
var color_green_upgradeui = make_color_rgb(86, 169, 102); 

var _btn_w = 180; 
var _btn_h = 45;  
var _btn_x1 = _cx - (_btn_w / 2); 
var _btn_x2 = _cx + (_btn_w / 2); 
var _orange_w = 100; 

// --- QTE UPGRADE SECTION ---
var _qte_cy = by + 220; 

var _rect_x1 = _cx - (sprite_get_width(spr_rectangle1) / 2);
var _rect_y1 = _qte_cy - (sprite_get_height(spr_rectangle1) / 2);
draw_sprite(spr_rectangle1, 0, _rect_x1, _rect_y1);

var _clock_x = _cx - (sprite_get_width(spr_stopwatch) / 2);
var _clock_y = (_qte_cy - 75) - (sprite_get_height(spr_stopwatch) / 2);
draw_sprite(spr_stopwatch, 0, _clock_x, _clock_y); 

draw_set_color(color_brown_upgradeui);
draw_text(_cx, _qte_cy - 40, "QTE Upgrade");

draw_set_color(color_yellow_upgradeui);
draw_text(_cx, _qte_cy - 5, "Words (-1)"); 
draw_text(_cx, _qte_cy + 15, "Coins (+100)"); 

var _btn_qte_y = _qte_cy + 75; 

// --- DETERMINES QTE BUTTON STATE ---
var _qte_locked = (global.coins < global.price_qte);
var _qte_is_max = (global.upgrade_qte_level >= global.max_upgrade);
var _current_qte_col = color_green_upgradeui;
var _qte_txt = "Purchase";

if (_qte_is_max) {
    _current_qte_col = c_dkgray;
    _qte_txt = "MAX";
} else if (_qte_locked) {
    _current_qte_col = c_gray; // Berubah jadi Abu-abu
    _qte_txt = "Locked";       // Berubah jadi Locked
}

draw_set_color(_current_qte_col);
draw_roundrect_ext(_btn_x1, _btn_qte_y, _btn_x2, _btn_qte_y + _btn_h, 25, 25, false);

// Warna aksen (bagian kiri tombol)
draw_set_color((_qte_locked || _qte_is_max) ? c_silver : color_yellow_upgradeui);
draw_roundrect_ext(_btn_x1 - 2, _btn_qte_y - 2, _btn_x1 + _orange_w, _btn_qte_y + _btn_h + 2, 25, 25, false);

draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(_btn_x1 + (_orange_w / 2), _btn_qte_y + (_btn_h / 2), _qte_txt);

var _qte_price_txt = _qte_is_max ? "MAX" : string(global.price_qte);
draw_set_color(_qte_locked ? c_red : color_yellow_upgradeui); // Merah jika uang kurang
draw_text(_btn_x1 + _orange_w + ((_btn_w - _orange_w) / 2), _btn_qte_y + (_btn_h / 2), "$ " + _qte_price_txt);
draw_set_valign(fa_top); 


// --- WATERBUCKET UPGRADE SECTION ---
var _wat_cy = by + 470; 

var _rect_x2 = _cx - (sprite_get_width(spr_rectangle1) / 2);
var _rect_y2 = _wat_cy - (sprite_get_height(spr_rectangle1) / 2);
draw_sprite(spr_rectangle1, 0, _rect_x2, _rect_y2);

var _bucket_x = _cx - (sprite_get_width(spr_waterbucket) / 2);
var _bucket_y = (_wat_cy - 75) - (sprite_get_height(spr_waterbucket) / 2);
draw_sprite(spr_waterbucket, 0, _bucket_x, _bucket_y);

draw_set_color(color_brown_upgradeui);
draw_text(_cx, _wat_cy - 40, "Water Upgrade");

draw_set_color(color_yellow_upgradeui);
draw_text(_cx, _wat_cy - 5, "Carryable Amount");
draw_text(_cx, _wat_cy + 15, "(+1)");

var _btn_wat_y = _wat_cy + 75;

// --- DETERMINES WATER BUTTON STATE ---
var _wat_locked = (global.coins < global.price_water);
var _wat_is_max = (global.upgrade_water_level >= global.max_upgrade);
var _current_wat_col = color_green_upgradeui;
var _wat_txt = "Purchase";

if (_wat_is_max) {
    _current_wat_col = c_dkgray;
    _wat_txt = "MAX";
} else if (_wat_locked) {
    _current_wat_col = c_gray; // Berubah jadi Abu-abu
    _wat_txt = "Locked";       // Berubah jadi Locked
}

draw_set_color(_current_wat_col);
draw_roundrect_ext(_btn_x1, _btn_wat_y, _btn_x2, _btn_wat_y + _btn_h, 25, 25, false);

// Warna aksen
draw_set_color((_wat_locked || _wat_is_max) ? c_silver : color_yellow_upgradeui);
draw_roundrect_ext(_btn_x1 - 2, _btn_wat_y - 2, _btn_x1 + _orange_w, _btn_wat_y + _btn_h + 2, 25, 25, false);

draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(_btn_x1 + (_orange_w / 2), _btn_wat_y + (_btn_h / 2), _wat_txt);

var _wat_price_txt = _wat_is_max ? "MAX" : string(global.price_water);
draw_set_color(_wat_locked ? c_red : color_yellow_upgradeui);
draw_text(_btn_x1 + _orange_w + ((_btn_w - _orange_w) / 2), _btn_wat_y + (_btn_h / 2), "$ " + _wat_price_txt);

// --- 3. RESET ALIGNMENT ---
draw_set_valign(fa_top);
draw_set_halign(fa_left);