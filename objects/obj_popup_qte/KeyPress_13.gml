/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6121039F
/// @DnDArgument : "var" "obj_budi.typedWord"
/// @DnDArgument : "value" "tugas_list[index_sekarang]"
if(obj_budi.typedWord == tugas_list[index_sekarang]){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61385A9F
	/// @DnDParent : 6121039F
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "index_sekarang"
	index_sekarang += +1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61412538
	/// @DnDParent : 6121039F
	/// @DnDArgument : "var" "index_sekarang"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "array_length(tugas_list)"
	if(index_sekarang >= array_length(tugas_list)){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5B19CE82
		/// @DnDParent : 61412538
		/// @DnDArgument : "function" "scr_coin_add"
		/// @DnDArgument : "arg" "300"
		scr_coin_add(300);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 521F75E8
		/// @DnDInput : 3
		/// @DnDParent : 61412538
		/// @DnDArgument : "expr" "room_speed * 0.2"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_2" "false"
		/// @DnDArgument : "var" "obj_cycle_time.alarm[0]"
		/// @DnDArgument : "var_1" "obj_budi.spd"
		/// @DnDArgument : "var_2" "global.popup_open"
		obj_cycle_time.alarm[0] = room_speed * 0.2;
		obj_budi.spd = 1;
		global.popup_open = false;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2A203A43
		/// @DnDParent : 61412538
		instance_destroy();}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 784A2386
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "obj_budi.typedWord"
obj_budi.typedWord = "";