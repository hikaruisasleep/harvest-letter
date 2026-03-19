if(instance_place(x, y, obj_budi)){
	// STAGE 0: Adding Chicks
	if(stage == 0){
		if(obj_budi.typedWord == "add layer"){
			if(global.laying_chicks > 0){
				coop_type = "layer";
				global.laying_chicks -= 1;
				stage = 1;
				word = "feed";
				image_index = 1;
				obj_budi.typedWord = "";
				instance_create_layer(room_width / 2, room_height/ 2, "UI", obj_popup);
			} else {
				show_message("You need egg-laying chicks");
				obj_budi.typedWord = "";
			}
		} else if(obj_budi.typedWord == "add broiler"){
			if(global.broiler_chicks > 0){
				coop_type = "broiler";
				global.broiler_chicks -= 1;
				stage = 1;
				word = "feed";
				image_index = 1;
				obj_budi.typedWord = "";
				instance_create_layer(room_width / 2, room_height/ 2, "UI", obj_popup);
			} else {
				show_message("You need broiler chicks");
				obj_budi.typedWord = "";
			}
		}
	}
	// STAGE 1: Feeding
	else if(stage == 1 && obj_budi.typedWord == word){
		if(global.chicken_feed <= 0){
			show_message("You need chicken feed")
			return;
		}
		global.chicken_feed -= 1;
		obj_budi.typedWord = ""
		instance_create_layer(room_width / 2, room_height/ 2, "UI", obj_popup)
		stage = 2
		word = (coop_type == "layer") ? "collect" : "harvest";
		is_fed = true
	}
	// STAGE 2: Collecting/Harvesting
	else if(stage == 2 && obj_budi.typedWord == word){
		obj_budi.typedWord = ""
		if(coop_type == "layer") {
			global.eggs += 3; // Layers produce 3 eggs
			// Reset for next feeding
			stage = 1;
			word = "feed";
			is_fed = false;
			image_index = 1;
		} else {
			global.chicken_meat += 1;
			// Reset to empty
			stage = 0;
			word = "add chicks";
			coop_type = undefined;
			is_fed = false;
			image_index = 0;
		}
	}
}