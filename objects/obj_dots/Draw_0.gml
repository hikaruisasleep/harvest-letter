/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7EEDF0BC
/// @DnDArgument : "color" "$FF123960"
draw_set_colour($FF123960 & $ffffff);
var l7EEDF0BC_0=($FF123960 >> 24);
draw_set_alpha(l7EEDF0BC_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 19A9D6AF
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5052E87E
/// @DnDArgument : "var" "collide"
/// @DnDArgument : "value" "true"
if(collide == true){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 5C708737
	/// @DnDParent : 5052E87E
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 72B268D0
	/// @DnDParent : 5052E87E
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "global.words[word_index]"
	draw_text(x + 0, y + 0,  + string(global.words[word_index]));

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A69D2F6
	/// @DnDParent : 5052E87E
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4695EAFD
/// @DnDArgument : "var" "show_popup_grow"
/// @DnDArgument : "value" "true"
if(show_popup_grow == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57AA1C7A
	/// @DnDParent : 4695EAFD
	/// @DnDArgument : "x" "obj_tanah.x + 200"
	/// @DnDArgument : "y" "obj_tanah.y - 200"
	/// @DnDArgument : "sprite" "spr_tutor_crops"
	/// @DnDSaveInfo : "sprite" "spr_tutor_crops"
	draw_sprite(spr_tutor_crops, 0, obj_tanah.x + 200, obj_tanah.y - 200);}