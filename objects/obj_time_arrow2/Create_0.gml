/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 558ADF89
/// @DnDArgument : "expr" "11"
/// @DnDArgument : "var" "total_hours"
total_hours = 11;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DAEE2B9
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "start_hour"
start_hour = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04C4E9C8
/// @DnDArgument : "expr" "360 / total_hours"
/// @DnDArgument : "var" "angle_per_hour"
angle_per_hour = 360 / total_hours;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 731737EF
/// @DnDArgument : "instvar" "12"
image_angle = 0;