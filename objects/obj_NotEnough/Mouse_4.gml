if (instance_exists(obj_MsAnne))     with (obj_MsAnne)     instance_destroy();
if (instance_exists(obj_Sellcarrot)) with (obj_Sellcarrot) instance_destroy();
if (instance_exists(obj_Give))       with (obj_Give)       instance_destroy();
if (instance_exists(obj_NotEnough))  with (obj_NotEnough)  instance_destroy();

global.popup_open = false;
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_budi.spd = 1;