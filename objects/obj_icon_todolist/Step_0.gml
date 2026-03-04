/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 0EFA97BB
/// @DnDArgument : "key" "vk_enter"
var l0EFA97BB_0;l0EFA97BB_0 = keyboard_check_pressed(vk_enter);if (l0EFA97BB_0){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2424E79A
	/// @DnDParent : 0EFA97BB
	/// @DnDArgument : "obj" "obj_parent_popup"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_parent_popup"
	var l2424E79A_0 = false;l2424E79A_0 = instance_exists(obj_parent_popup);if(!l2424E79A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30517C9C
		/// @DnDParent : 2424E79A
		/// @DnDArgument : "var" "obj_game.show_todolist"
		/// @DnDArgument : "value" "false"
		if(obj_game.show_todolist == false){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6FC3F5E5
			/// @DnDParent : 30517C9C
			/// @DnDArgument : "expr" "string_pos("to do", string_lower(keyboard_string)) > 0"
			if(string_pos("to do", string_lower(keyboard_string)) > 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
				/// @DnDVersion : 1
				/// @DnDHash : 0719AECA
				/// @DnDParent : 6FC3F5E5
				/// @DnDArgument : "code" "/// @description Execute Code$(13_10)obj_game.show_todolist = true; $(13_10)// Atau pakai true biar pasti kebuka.$(13_10)$(13_10)"
				/// @description Execute Code
				obj_game.show_todolist = true; 
				// Atau pakai true biar pasti kebuka.
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23E56E26
				/// @DnDParent : 6FC3F5E5
				/// @DnDArgument : "expr" """"
				/// @DnDArgument : "var" "keyboard_string"
				keyboard_string = "";
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 67895BF3
				/// @DnDParent : 6FC3F5E5
				/// @DnDArgument : "expr" """"
				/// @DnDArgument : "var" "obj_budi.typedWord"
				obj_budi.typedWord = "";
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 0D61F93D
				/// @DnDParent : 6FC3F5E5
				/// @DnDArgument : "msg" ""berhasil buka todo""
				show_debug_message(string("berhasil buka todo"));}}}}