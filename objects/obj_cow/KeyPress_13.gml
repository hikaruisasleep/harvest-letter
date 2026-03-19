// Simplified cow interaction: Feed -> Milk
if (obj_budi.typedWord == word && instance_place(x, y, obj_budi)) {
    
    // --- STAGE 0: FEEDING ---
    if (stage == 0) {
        if (global.grass > 0) {        
            obj_budi.typedWord = "";
            stage = 1;
            word = "milk";
            
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
    
    // --- STAGE 1: MILKING ---
    else if (stage == 1) {
		stage = 0;
		word = "feed";
		global.milk += 2;
        obj_budi.typedWord = "";
	}
}
