// Replicated from obj_growth/KeyPress_13.gml
if (obj_budi.typedWord == word && instance_place(x, y, obj_budi)) {
    
    // --- STAGE 0: FEEDING ---
    if (stage == 0) {
        if (global.grass > 0) {        
            obj_budi.typedWord = "";
            stage = 1;
            word = "water";
            
            // Kurangi grass
            global.grass -= 1;
            
            // Munculkan popup QTE
            instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        } 
        else {
            show_message("You need grass!");
            obj_budi.typedWord = "";
            return;
        }
    } 
    
    // --- STAGE 1: WATERING ---
    else if (stage == 1) {
        // Cek apakah player punya ember air
        if (global.waterbucket <= 0) {
            show_message("You need water!");
            obj_budi.typedWord = "";
            return;
        }
        
        obj_budi.typedWord = "";
        instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        
        stage = 2;
        word = "milk";
        is_watered = true;
        
        // Kurangi ember air
        global.waterbucket -= 1;
    }
    
    // --- STAGE 2: MILKING ---
    else if (stage == 2) {
		stage = 0;
		word = "feed";
		global.milk += 2;
	}
}
