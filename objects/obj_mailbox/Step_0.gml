/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 172A80EB
/// @DnDArgument : "code" "var l6B2054E0_0;$(13_10)l6B2054E0_0 = keyboard_check_pressed(vk_enter);$(13_10)if (l6B2054E0_0)$(13_10){$(13_10)	if(string_pos("mail", string_lower(keyboard_string)) > 0)$(13_10){$(13_10)	if(annie_letter_opened == true)$(13_10){$(13_10)	instance_create_layer(0, 0, "Instances", obj_nomail);$(13_10)}$(13_10)	$(13_10)		else$(13_10){$(13_10)	instance_create_layer(0, 0, "Instances", obj_annie_letter);$(13_10)		$(13_10)			if (instance_exists(obj_quest_manager)) {$(13_10)			    obj_quest_manager.complete_quest("open_mail");$(13_10)			}$(13_10)		$(13_10)			with(obj_tutor_mail) instance_destroy();$(13_10)		$(13_10)			with(obj_tutor_received_letter) instance_destroy();$(13_10)		$(13_10)			keyboard_string = "";$(13_10)			annie_letter_opened = true;$(13_10)}$(13_10)}$(13_10)}$(13_10)$(13_10)if(mouse_check_button_pressed(mb_left) && point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 15, 15, 115, 80))$(13_10){$(13_10)	instance_create_layer(0, 0, "Instances", obj_annie_letter);$(13_10)$(13_10)	keyboard_string = "";$(13_10)$(13_10)	with(obj_tutor_mail) instance_destroy();$(13_10)$(13_10)	with(obj_tutor_received_letter) instance_destroy();$(13_10)}"
var l6B2054E0_0;
l6B2054E0_0 = keyboard_check_pressed(vk_enter);
if (l6B2054E0_0)
{
	if(string_pos("mail", string_lower(keyboard_string)) > 0)
{
	if(annie_letter_opened == true)
{
	instance_create_layer(0, 0, "Instances", obj_nomail);
}
	
		else
{
	instance_create_layer(0, 0, "Instances", obj_annie_letter);
		
			if (instance_exists(obj_quest_manager)) {
			    obj_quest_manager.complete_quest("open_mail");
			}
		
			with(obj_tutor_mail) instance_destroy();
		
			with(obj_tutor_received_letter) instance_destroy();
		
			keyboard_string = "";
			annie_letter_opened = true;
}
}
}

if(mouse_check_button_pressed(mb_left) && point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 15, 15, 115, 80))
{
	instance_create_layer(0, 0, "Instances", obj_annie_letter);

	keyboard_string = "";

	with(obj_tutor_mail) instance_destroy();

	with(obj_tutor_received_letter) instance_destroy();
}