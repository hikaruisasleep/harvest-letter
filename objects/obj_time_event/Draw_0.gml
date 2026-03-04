/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6610D9AF
/// @DnDArgument : "obj" "obj_time_event"
/// @DnDSaveInfo : "obj" "obj_time_event"
var l6610D9AF_0 = false;l6610D9AF_0 = instance_exists(obj_time_event);if(l6610D9AF_0){}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4C131AD9
/// @DnDArgument : "expr" "global.jam_sekarang >= 7 && global.jam_sekarang < 8"
if(global.jam_sekarang >= 7 && global.jam_sekarang < 8){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7964AFC6
	/// @DnDParent : 4C131AD9
	/// @DnDArgument : "x" "810"
	/// @DnDArgument : "y" "454"
	/// @DnDArgument : "xscale" "0.05"
	/// @DnDArgument : "yscale" "0.05"
	/// @DnDArgument : "sprite" "spr_time_event"
	draw_sprite_ext(spr_time_event, 0, 810, 454, 0.05, 0.05, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5726A33E
/// @DnDArgument : "expr" "global.jam_sekarang >= 8 && global.jam_sekarang < 9"
if(global.jam_sekarang >= 8 && global.jam_sekarang < 9){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 071BE3B0
	/// @DnDParent : 5726A33E
	/// @DnDArgument : "x" "1095"
	/// @DnDArgument : "y" "709"
	/// @DnDArgument : "xscale" "0.05"
	/// @DnDArgument : "yscale" "0.05"
	/// @DnDArgument : "sprite" "spr_time_event"
	draw_sprite_ext(spr_time_event, 0, 1095, 709, 0.05, 0.05, 0, $FFFFFF & $ffffff, 1);}