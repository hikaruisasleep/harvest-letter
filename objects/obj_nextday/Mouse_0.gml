/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 3B89B3D6
/// @DnDArgument : "msg" "string(global.jam_sekarang)"
show_debug_message(string(string(global.jam_sekarang)));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 787B09AF
/// @DnDArgument : "var" "global.jam_sekarang"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "12"
if(global.jam_sekarang > 12){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 106582DA
	/// @DnDParent : 787B09AF
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.hari"
	global.hari += +1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54A2060F
/// @DnDInput : 8
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "expr_2" "true"
/// @DnDArgument : "expr_3" "+200"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "expr_4" "1"
/// @DnDArgument : "expr_5" "room_speed * 0.2"
/// @DnDArgument : "expr_6" "+1"
/// @DnDArgument : "expr_relative_6" "1"
/// @DnDArgument : "expr_7" "false"
/// @DnDArgument : "var" "global.jam_sekarang"
/// @DnDArgument : "var_1" "global.menit_sekarang"
/// @DnDArgument : "var_2" "global.hari_sudah_diupdate"
/// @DnDArgument : "var_3" "obj_budi.y"
/// @DnDArgument : "var_4" "obj_budi.spd"
/// @DnDArgument : "var_5" "obj_cycle_time.alarm[0]"
/// @DnDArgument : "var_6" "obj_growth.image_index"
/// @DnDArgument : "var_7" "global.popup_open"
global.jam_sekarang = 6;
global.menit_sekarang = 0;
global.hari_sudah_diupdate = true;
obj_budi.y += +200;
obj_budi.spd = 1;
obj_cycle_time.alarm[0] = room_speed * 0.2;
obj_growth.image_index += +1;
global.popup_open = false;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 16599DA5
/// @DnDArgument : "var" "layer_id"
/// @DnDArgument : "value" "layer_get_id("Fields")"
var layer_id = layer_get_id("Fields");

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CB9FFD3
/// @DnDArgument : "var" "fields"
/// @DnDArgument : "value" "layer_get_all_elements(layer_id)"
var fields = layer_get_all_elements(layer_id);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 547EEBA4
/// @DnDArgument : "cond" "i < array_length(fields)"
for(i = 0; i < array_length(fields); i += 1) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D37FA33
	/// @DnDParent : 547EEBA4
	/// @DnDArgument : "var" "field"
	/// @DnDArgument : "value" "layer_instance_get_instance(fields[i])"
	var field = layer_instance_get_instance(fields[i]);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E7AA570
	/// @DnDParent : 547EEBA4
	/// @DnDArgument : "var" "field.is_watered"
	/// @DnDArgument : "value" "true"
	if(field.is_watered == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 20A38428
		/// @DnDParent : 0E7AA570
		/// @DnDArgument : "expr" "+1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "field.image_index"
		field.image_index += +1;}}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 08A2F97F
/// @DnDApplyTo : {obj_blur}
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