/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12DD7524
/// @DnDInput : 2
/// @DnDArgument : "expr" "room_speed * 0.2"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_1" "obj_budi.spd"
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_budi.spd = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E818ED6
instance_destroy();