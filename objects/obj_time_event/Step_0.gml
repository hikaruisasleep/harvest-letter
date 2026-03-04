/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6E85943E
/// @DnDArgument : "obj" "obj_time_event"
/// @DnDSaveInfo : "obj" "obj_time_event"
var l6E85943E_0 = false;l6E85943E_0 = instance_exists(obj_time_event);if(l6E85943E_0){}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1810F7E0
/// @DnDArgument : "expr" "global.jam_sekarang >= 7 && global.jam_sekarang < 8"
if(global.jam_sekarang >= 7 && global.jam_sekarang < 8){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 599A8D92
	/// @DnDParent : 1810F7E0
	/// @DnDArgument : "x" "810"
	/// @DnDArgument : "y" "454"
	/// @DnDArgument : "xscale" "0.05"
	/// @DnDArgument : "yscale" "0.05"
	/// @DnDArgument : "sprite" "spr_time_event"
	draw_sprite_ext(spr_time_event, 0, 810, 454, 0.05, 0.05, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78A5004C
/// @DnDArgument : "expr" "global.jam_sekarang >= 8 && global.jam_sekarang < 9"
if(global.jam_sekarang >= 8 && global.jam_sekarang < 9){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 23BACB62
	/// @DnDParent : 78A5004C
	/// @DnDArgument : "x" "1095"
	/// @DnDArgument : "y" "709"
	/// @DnDArgument : "xscale" "0.05"
	/// @DnDArgument : "yscale" "0.05"
	/// @DnDArgument : "sprite" "spr_time_event"
	draw_sprite_ext(spr_time_event, 0, 1095, 709, 0.05, 0.05, 0, $FFFFFF & $ffffff, 1);}