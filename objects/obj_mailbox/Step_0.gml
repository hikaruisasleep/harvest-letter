/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6B2054E0
/// @DnDArgument : "key" "vk_enter"
var l6B2054E0_0;l6B2054E0_0 = keyboard_check_pressed(vk_enter);if (l6B2054E0_0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 280B9FD3
	/// @DnDParent : 6B2054E0
	/// @DnDArgument : "expr" "string_pos("mail", string_lower(keyboard_string)) > 0"
	if(string_pos("mail", string_lower(keyboard_string)) > 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6305D963
		/// @DnDParent : 280B9FD3
		/// @DnDArgument : "objectid" "obj_annie_letter"
		/// @DnDSaveInfo : "objectid" "obj_annie_letter"
		instance_create_layer(0, 0, "Instances", obj_annie_letter);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 60EE8C3D
		/// @DnDApplyTo : {obj_tutor_mail}
		/// @DnDParent : 280B9FD3
		with(obj_tutor_mail) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 500A4339
		/// @DnDParent : 280B9FD3
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "keyboard_string"
		keyboard_string = "";}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 213BFC01
/// @DnDArgument : "expr" "mouse_check_button_pressed(mb_left) && point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 15, 15, 115, 80)"
if(mouse_check_button_pressed(mb_left) && point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 15, 15, 115, 80)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 04F43E32
	/// @DnDParent : 213BFC01
	/// @DnDArgument : "objectid" "obj_annie_letter"
	/// @DnDSaveInfo : "objectid" "obj_annie_letter"
	instance_create_layer(0, 0, "Instances", obj_annie_letter);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E06AF76
	/// @DnDParent : 213BFC01
	/// @DnDArgument : "expr" """"
	/// @DnDArgument : "var" "keyboard_string"
	keyboard_string = "";

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58556A4C
	/// @DnDApplyTo : {obj_tutor_mail}
	/// @DnDParent : 213BFC01
	with(obj_tutor_mail) instance_destroy();}