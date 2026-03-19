/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A3F91B7
/// @DnDInput : 2
/// @DnDArgument : "expr" "room_speed * 0.2"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_1" "obj_budi.spd"
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_budi.spd = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 46C4165E
instance_destroy();