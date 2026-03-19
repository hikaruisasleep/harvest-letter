if (!variable_global_exists("last_random_day")) {
    global.last_random_day = -1;
}

if (global.hari != global.last_random_day) {
    global.demand_carrot = irandom_range(3, 8);
    global.reward_money  = global.demand_carrot * 25;
    global.last_random_day = global.hari;
}


// Center the panel in camera view
var cam = view_camera[0];
x = camera_get_view_x(cam) + camera_get_view_width(cam) / 2;
y = camera_get_view_y(cam) + camera_get_view_height(cam) / 2;

depth = -100;

// Store GUI center as instance variables (no var!)
center_x = display_get_gui_width() / 2;
center_y = display_get_gui_height() / 2;

// Button positions
var button_y = y + (sprite_height / 4); // lower-middle of panel
var spacing  = 90;   // distance from center
var offset   = 70; // shift both buttons left

// Spawn buttons shifted left
instance_create_layer((x - spacing) - offset, button_y, "UI", obj_Give);
instance_create_layer((x + spacing) - offset, button_y, "UI", obj_NotEnough);

global.popup_open = true;
obj_cycle_time.alarm[0] = -1
