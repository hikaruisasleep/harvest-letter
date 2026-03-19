if(obj_budi.typedWord == tugas_list[index_sekarang])
{
	index_sekarang += +1;

	if(index_sekarang >= array_length(tugas_list))
{
	coin_add = obj_budi.coin_add;
	
		scr_coin_add(300 + (global.upgrade_qte_level * 100));
	
		instance_create_layer(150, 980, "QTE", obj_rewards);
	
		obj_cycle_time.alarm[0] = room_speed * 0.2;
		obj_budi.spd = 1;
		global.popup_open = false;
	
		instance_destroy();
}
}

obj_budi.typedWord = "";