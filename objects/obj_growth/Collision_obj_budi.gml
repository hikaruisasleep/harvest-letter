if(keyboard_check_pressed(vk_enter) && image_index == 2 && obj_budi.typedWord == "collect"){
	inventory_add(obj_carrot)
	obj_tutor_complete.showing = true;
	if (!instance_exists(obj_new_day)) instance_create_depth(0, 0, -10000, obj_new_day);
	if (!instance_exists(obj_mainmenu_btn_1)) instance_create_depth(0, 0, -10000, obj_mainmenu_btn_1);
}