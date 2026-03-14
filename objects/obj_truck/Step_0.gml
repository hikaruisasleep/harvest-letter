depth = -y; //sprite layering
// 1. Cek apakah Budi di dekat Truk
if (instance_exists(obj_budi)) {
    is_near = (point_distance(x, y, obj_budi.x, obj_budi.y) < interact_dist);
} else {
    is_near = false;
}

/// 2. Logika Buy and Sell
if (is_near && !instance_exists(obj_shop_ui)) {
    var _typed = string_lower(obj_budi.typedWord);
    
    if (_typed == "buy") {
		obj_budi.typedWord = ""
		global.popup_open = true;
		obj_cycle_time.alarm[0] = -1
        
        var _ui = instance_create_layer(0, 0, "UI", obj_shop_ui);
        _ui.mode = "buy"; 
    } 
    else if (_typed == "sell") {
		obj_budi.typedWord = ""
		global.popup_open = true;
		obj_cycle_time.alarm[0] = -1
        
        var _ui = instance_create_layer(0, 0, "UI", obj_shop_ui);
        _ui.mode = "sell"; 
    }
}