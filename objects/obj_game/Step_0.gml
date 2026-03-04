if (!variable_instance_exists(id, "face")) {
    face = 0; 
}

var _hspd = 0;
var _vspd = 0;

if (global.popup_open) {
    _hspd = 0;
    _vspd = 0;
    hspeed = 0;
    vspeed = 0;
    speed = 0;
    spd = 0;

    image_speed = 0;
    if (face == 0) image_index = 0;
    if (face == 1) image_index = 11;
    if (face == 2) image_index = 7;
    if (face == 3) image_index = 3;

    exit; // stop the rest of Step
}

