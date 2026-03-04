/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54A2060F
/// @DnDInput : 10
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "expr_1" "+1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_3" "true"
/// @DnDArgument : "expr_4" "+200"
/// @DnDArgument : "expr_relative_4" "1"
/// @DnDArgument : "expr_5" "-1"
/// @DnDArgument : "expr_6" "1"
/// @DnDArgument : "expr_7" "room_speed * 0.2"
/// @DnDArgument : "expr_8" "+1"
/// @DnDArgument : "expr_relative_8" "1"
/// @DnDArgument : "expr_9" "false"
/// @DnDArgument : "var" "global.jam_sekarang"
/// @DnDArgument : "var_1" "global.hari"
/// @DnDArgument : "var_2" "global.menit_sekarang"
/// @DnDArgument : "var_3" "global.hari_sudah_diupdate"
/// @DnDArgument : "var_4" "obj_budi.y"
/// @DnDArgument : "var_5" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_6" "obj_budi.spd"
/// @DnDArgument : "var_7" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_8" "obj_growth.image_index"
/// @DnDArgument : "var_9" "global.popup_open"
global.jam_sekarang = 6;
global.hari += +1;
global.menit_sekarang = 0;
global.hari_sudah_diupdate = true;
obj_budi.y += +200;
obj_cycle_time.alarm[0] = -1;
obj_budi.spd = 1;
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_growth.image_index += +1;
global.popup_open = false;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5BE65B4B
/// @DnDApplyTo : {obJ_blur}
with(obj_blur) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 534BC79B
/// @DnDApplyTo : {obj_popup_sleep}
with(obj_popup_sleep) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D883620
instance_destroy();