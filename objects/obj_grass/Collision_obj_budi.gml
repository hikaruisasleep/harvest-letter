/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 354ECA9E
/// @DnDArgument : "key" "vk_enter"
var l354ECA9E_0;l354ECA9E_0 = keyboard_check_pressed(vk_enter);if (l354ECA9E_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55C71B23
	/// @DnDParent : 354ECA9E
	/// @DnDArgument : "var" "string_trim_end(obj_budi.typedWord)"
	/// @DnDArgument : "value" "global.words[word_index]"
	if(string_trim_end(obj_budi.typedWord) == global.words[word_index]){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05619A66
		/// @DnDParent : 55C71B23
		/// @DnDArgument : "xpos" "room_width/2"
		/// @DnDArgument : "ypos" "room_height/2"
		/// @DnDArgument : "objectid" "obj_popup"
		/// @DnDArgument : "layer" ""UI""
		/// @DnDSaveInfo : "objectid" "obj_popup"
		instance_create_layer(room_width/2, room_height/2, "UI", obj_popup);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4104DAA5
		/// @DnDParent : 55C71B23
		/// @DnDArgument : "expr" "self"
		/// @DnDArgument : "var" "obj_game.selected_task"
		obj_game.selected_task = self;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23576B10
		/// @DnDParent : 55C71B23
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "keyboard_string"
		keyboard_string = "";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ACBEF52
		/// @DnDParent : 55C71B23
		/// @DnDArgument : "expr" """"
		/// @DnDArgument : "var" "typedWord"
		typedWord = "";}}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5DCE4747
/// @DnDArgument : "spriteind" "spr_text_box"
/// @DnDSaveInfo : "spriteind" "spr_text_box"
sprite_index = spr_text_box;
image_index = 0;

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5D83A631
/// @DnDArgument : "font" "fnt_main"
/// @DnDSaveInfo : "font" "fnt_main"
draw_set_font(fnt_main);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52372557
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "collide               "
collide                = true;