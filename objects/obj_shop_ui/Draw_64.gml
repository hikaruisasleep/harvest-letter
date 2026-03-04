var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var click = mouse_check_button_pressed(mb_left);
var release = mouse_check_button_released(mb_left);

//PLACE HOLDER SHOP BACKGROUND ================================================
draw_set_color(c_dkgray);
draw_rectangle(50, 50, 750, 500, false);
draw_set_color(c_white);
draw_text(70, 70, "SHOP - Coins: " + string(global.coins));

//Player Inventory
var start_x = 100;
var start_y = 150;

for (var i = 0; i < array_length(global.inv_player); i++) {
    var _x = start_x + (i * 110);
    var _y = start_y;
    
    draw_rectangle(_x, _y, _x+100, _y+100, true); 
    var _item = global.inv_player[i];
    
	//Harga Item
    if (_item != -1 && _item != held_item) {
        draw_text(_x+10, _y+40, _item.name);
        draw_text(_x+10, _y+60, "$" + string(_item.price));
    }
    
    if (click && point_in_rectangle(mx, my, _x, _y, _x+100, _y+100)) {
        if (_item != -1) {
            held_item = _item;
            held_from = "player";
            held_index = i;
            global.inv_player[i] = -1;
        }
    }
    
    // Logic Beli
    if (release && point_in_rectangle(mx, my, _x, _y, _x+100, _y+100)) {
        if (held_item != -1 && held_from == "toko") {
            // Cek Uang
            if (global.coins >= held_item.price) {
                global.coins -= held_item.price;
                global.inv_player[i] = held_item;
                held_item = -1;
            }
        }
    }
}


//Shop section
var shop_y = 300;

for (var j = 0; j < array_length(items_toko); j++) {
    var _sx = start_x + (j * 110);
    var _sy = shop_y;
    
    draw_rectangle(_sx, _sy, _sx+100, _sy+100, true);
    
    var _sItem = items_toko[j];
    
    // item Sprite
    if (_sItem != held_item) {
        draw_text(_sx+10, _sy+40, _sItem.name);
        draw_text(_sx+10, _sy+60, "$" + string(_sItem.price));
    }
    
    // Click Item
    if (click && point_in_rectangle(mx, my, _sx, _sy, _sx+100, _sy+100)) {
        held_item = _sItem;
        held_from = "toko";
        held_index = j;
    }
    
    // Logic Jual
    if (release && point_in_rectangle(mx, my, _sx, _sy, _sx+100, _sy+100)) {
        if (held_item != -1 && held_from == "player") {
            global.coins += held_item.price;
            held_item = -1;
        }
    }
}

// Drag Logic
if (held_item != -1) {
    draw_text(mx, my, held_item.name);
    
    if (release) {
        if (held_from == "player") {
            global.inv_player[held_index] = held_item;
        }
        held_item = -1;
    }
}