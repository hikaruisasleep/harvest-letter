/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B42CE6
/// @DnDArgument : "expr" "global.jam_sekarang"
/// @DnDArgument : "var" "current_hour_24"
current_hour_24 = global.jam_sekarang;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 69880941
/// @DnDArgument : "expr" "current_hour_24 >= start_hour"
if(current_hour_24 >= start_hour){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24A7FD10
	/// @DnDParent : 69880941
	/// @DnDArgument : "expr" "current_hour_24 - start_hour"
	/// @DnDArgument : "var" "hour_in_cycle"
	hour_in_cycle = current_hour_24 - start_hour;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2112AF1F
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FB77138
	/// @DnDParent : 2112AF1F
	/// @DnDArgument : "expr" "current_hour_24 + (24 - start_hour)"
	/// @DnDArgument : "var" "hour_in_cycle"
	hour_in_cycle = current_hour_24 + (24 - start_hour);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C7A8BCF
/// @DnDArgument : "expr" "hour_in_cycle >= total_hours"
if(hour_in_cycle >= total_hours){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 199CCB61
	/// @DnDParent : 4C7A8BCF
	/// @DnDArgument : "expr" "hour_in_cycle - total_hours"
	/// @DnDArgument : "var" "hour_in_cycle"
	hour_in_cycle = hour_in_cycle - total_hours;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1929B678
/// @DnDArgument : "expr" "hour_in_cycle * angle_per_hour"
/// @DnDArgument : "var" "target_angle"
target_angle = hour_in_cycle * angle_per_hour;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 4BBE2A1C
/// @DnDArgument : "value" "target_angle"
/// @DnDArgument : "instvar" "12"
image_angle = target_angle;