/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 66CB76D0
/// @DnDArgument : "key" "vk_backspace"
/// @DnDArgument : "not" "1"
var l66CB76D0_0;l66CB76D0_0 = keyboard_check_pressed(vk_backspace);if (!l66CB76D0_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A33094C
	/// @DnDParent : 66CB76D0
	/// @DnDArgument : "expr" "string_trim(keyboard_lastchar)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "typedWord "
	typedWord  += string_trim(keyboard_lastchar);}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 6C4538FA
/// @DnDArgument : "msg" "typedWord"
show_debug_message(string(typedWord));