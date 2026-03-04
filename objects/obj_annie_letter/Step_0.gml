/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 419B0D64
/// @DnDArgument : "key" "vk_enter"
var l419B0D64_0;l419B0D64_0 = keyboard_check_pressed(vk_enter);if (l419B0D64_0){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D2E7396
	/// @DnDParent : 419B0D64
	/// @DnDArgument : "expr" "string_pos("open it", string_lower(keyboard_string)) > 0"
	if(string_pos("open it", string_lower(keyboard_string)) > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C52C472
		/// @DnDParent : 4D2E7396
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "obj_budi.typedWord"
		obj_budi.typedWord = "";
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6E680763
		/// @DnDParent : 4D2E7396
		/// @DnDArgument : "objectid" "obj_annie_reward"
		/// @DnDSaveInfo : "objectid" "obj_annie_reward"
		instance_create_layer(0, 0, "Instances", obj_annie_reward);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 43A7EF24
		/// @DnDParent : 4D2E7396
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34957AA8
		/// @DnDParent : 4D2E7396
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "keyboard_string"
		keyboard_string = "";}}