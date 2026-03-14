if (player_near) {
    if (obj_budi.typedWord == "collect water" || obj_budi.typedWord == "collectwater") {
        if (global.tutorial_index = 0 && show_collectwater == true){
            // Give water bucket
            with (obj_inventory) {
				if (global.waterbucket = 0){
					global.waterbucket += 1
					show_debug_message("Water bucket added")
				}         
            }

            // Complete first tutorial task
            global.tutorial_index = 1;
			show_collectwater = false;
			obj_wateryourcrops.showing = true;
		}
		else if (global.tutorial_index = 1){
            // Give water bucket
            with (obj_inventory) {
				if (global.waterbucket = 0){
					global.waterbucket += 1
					show_debug_message("Water bucket added")
				}
				
				else {
					show_message("You can only hold 1 water bucket")
				}
                
            }

            // Complete first tutorial task
            global.tutorial_index = 1;
			show_collectwater = false;
		}
		
    }
}

obj_budi.typedWord = "";
