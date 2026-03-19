 // Interaction: Feed -> Wait (2 days) -> Collect Egg  
if (instance_place(x, y, obj_budi)) {
// Check if the typed word matches the expected word for interaction                  
if (obj_budi.typedWord == word) {                                                     

// --- STAGE 0: FEEDING ---
if (stage == 0) {
		if (global.grass > 0) {
		obj_budi.typedWord = "";
		stage = 1;
		day_counter = 0; // Reset counter for new production
		word = "wait";

		global.grass -= 1;
 
		// Show QTE popup                                                         
		instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
	} else {                                                                        
		show_message("You need grass!");
		obj_budi.typedWord = "";
		return;
	}
}        

// --- STAGE 1: COLLECTING EGG ---
else if (stage == 1) {
	if (day_counter >= 2) {
		stage = 0;
        word = "feed";
        global.egg += 1;
        obj_budi.typedWord = "";
        show_message("Collected 1 Egg!");
	} else {
      // If it's stage 1 but word matches 'wait', nothing happens or show info
      show_message("The chicken hasn't laid an egg yet. Wait " + string(2 - day_counter) + " more days.");
      obj_budi.typedWord = "";
	}                                                                             
}
}
}
