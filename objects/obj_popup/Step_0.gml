if (index_sekarang < array_length(tugas_list)) {
    var _target = tugas_list[index_sekarang];
    
    if (string_length(keyboard_string) > string_length(_target)) {
        keyboard_string = string_copy(keyboard_string, 1, string_length(_target));
    }
    
    if (string_pos(keyboard_string, _target) != 1 && keyboard_string != "") {
        keyboard_string = string_copy(keyboard_string, 1, string_length(keyboard_string) - 1);
    }
    
    if (keyboard_string == _target) {
        index_sekarang += 1;
        keyboard_string = "";
        
        if (index_sekarang >= array_length(tugas_list)) {
            global.popup_open = false;
            instance_destroy();
        }
    }
}