draw_sprite(spr_shopbg, 0, bx, by);

draw_set_font(fnt_title_bold);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _title = (mode == "buy") ? "BUY SEEDS" : "SELL HARVEST";
draw_text(bx + (sw / 2), by + 30, _title);
draw_set_font(fnt_shop)

var _list = (mode == "buy") ? items_buy : items_sell;

var _ibg_w = sprite_get_width(spr_itembg);
var _ibg_h = sprite_get_height(spr_itembg);
var _start_x = bx + 50;
var _start_y = by + 100;
var _sep_x = _ibg_w + 20;
var _sep_y = _ibg_h + 20;

for (var i = 0; i < array_length(_list); i++) {
    var _row = i div 3;
    var _col = i mod 3;
    var _ix = _start_x + (_col * _sep_x);
    var _iy = _start_y + (_row * _sep_y);
    var _it = _list[i];

    // Background Item
    draw_sprite(spr_itembg, 0, _ix, _iy);

    // Highlight
    if (selected_item == i) {
        draw_set_alpha(0.3);
        draw_rectangle_color(_ix, _iy, _ix + _ibg_w, _iy + _ibg_h, c_yellow, c_yellow, c_yellow, c_yellow, false);
        draw_set_alpha(1);
    }

    // Teks Nama & Harga (Rata Tengah Kotak)
    var _cx = _ix + (_ibg_w / 2);
    draw_set_color(c_black);
    draw_text(_cx, _iy + 15, _it.name);
    draw_text(_cx, _iy + 35, "$" + string(_it.price));

    // Gambar Sprite Item
    var _spr_w = sprite_get_width(_it.sprite);
    draw_sprite(_it.sprite, 0, _cx - (_spr_w/2), _iy + 60);

    // Teks Owned (Mode Sell)
    if (mode == "sell" && _it.name == "Carrot") {
        draw_set_color(c_red);
        draw_text(_cx, _iy + _ibg_h - 70, "Owned: " + string(global.carrot));
    }

    // Tombol Minus
    var _min_w = sprite_get_width(spr_min);
    var _min_h = sprite_get_height(spr_min);
    var _min_x = _ix + 10;
    var _min_y = _iy + _ibg_h - _min_h - 10;
    draw_sprite(spr_min, 0, _min_x, _min_y);

    // Tombol Plus
    var _plus_w = sprite_get_width(spr_plus);
    var _plus_h = sprite_get_height(spr_plus);
    var _plus_x = _ix + _ibg_w - _plus_w - 10;
    var _plus_y = _iy + _ibg_h - _plus_h - 10;
    draw_sprite(spr_plus, 0, _plus_x, _plus_y);

    // Angka Qty
    draw_set_color(c_black);
    draw_set_valign(fa_middle);
    draw_text(_cx, _min_y + (_min_h / 2), string(_it.qty));
    draw_set_valign(fa_top);
}

// Tombol Purchase / Sell
var _btn_w = sprite_get_width(spr_purchase);
var _btn_h = sprite_get_height(spr_purchase);
var _p_x = bx + (sw / 2) - (_btn_w / 2);
var _p_y = by + sh - _btn_h - 30;

draw_sprite((mode == "buy") ? spr_purchase : spr_sell, 0, _p_x, _p_y); //draw sprite untuk Buy/Sell, nanti Venory fix
draw_set_valign(fa_middle);
draw_text(_p_x + (_btn_w / 2), _p_y + (_btn_h / 2), (mode == "buy") ? "" : ""); // teks button, biarin kosong aja
draw_set_valign(fa_top);

// Tombol X (Kotak Merah Buatan)
var _ex = bx + sw - 50;
var _ey = by + 20;
draw_set_color(c_red);
draw_rectangle(_ex, _ey, _ex + 30, _ey + 30, false);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_text(_ex + 15, _ey + 15, "X");

// Reset Total
draw_set_halign(fa_left);
draw_set_valign(fa_top);