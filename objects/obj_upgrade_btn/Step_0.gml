var l0EFA97BB_0;
l0EFA97BB_0 = keyboard_check_pressed(vk_enter);
if (l0EFA97BB_0)
{
	var l2424E79A_0 = false;
l2424E79A_0 = instance_exists(obj_parent_popup);
if(!l2424E79A_0)
{
	if(obj_game.show_upgradeUI == false)
{
	if(string_pos("upgrade", string_lower(keyboard_string)) > 0)
{
	/// @description Execute Code
				instance_create_layer(room_width / 2,room_height / 2, "QTE", obj_upgrade_UI);
				// Atau pakai true biar pasti kebuka.
			
				keyboard_string = "";
			
				obj_budi.typedWord = "";
			
				show_debug_message(string("berhasil buka upgrade"));
}
}
}
}