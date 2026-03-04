if (keyboard_check_pressed(vk_escape)) {
    if (held_item != -1 && held_from == "player") {
        global.inv_player[held_index] = held_item;
    } //Keep dragged item, kalau player exit shop
    
    global.popup_open = false;
    instance_destroy();
}