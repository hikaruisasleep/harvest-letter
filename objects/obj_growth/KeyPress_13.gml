// Cek apakah kata yang diketik Budi cocok dengan target word dan Budi sedang berada di lahan ini
if (obj_budi.typedWord == word && instance_place(x, y, obj_budi)) {
    
    // --- STAGE 0: MENANAM ---
    if (stage == 0) {
        // Cek apakah ada bibit (Cek Wortel dulu, baru Kentang)
        if (global.carrotseed > 0) {        
            plant_type = "carrot";
            global.carrotseed -= 1;
        } 
        else if (global.potatoseed > 0) {
            plant_type = "potato";
            global.potatoseed -= 1;
        }
        else {
            // Jika tidak ada bibit
            show_message("Kamu tidak punya bibit!");
            obj_budi.typedWord = "";
            return;
        }

        // Reset ketikan Budi & Lanjut ke tahap siram
        obj_budi.typedWord = "";
        stage = 1;
        word = "water";
        image_index = 1; // Stage 1: Growing
        
        // Color feedback for plant type
        if (plant_type == "carrot") image_blend = c_white;
        else if (plant_type == "potato") image_blend = make_color_rgb(200, 180, 150); // Brownish tint
        
        // Munculkan popup QTE
        instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
    } 
    
    // --- STAGE 1: MENYIRAM ---
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
        word = "harvest"; // Changed from "collect" for better feedback
        is_watered = true;
        image_index = 2; // Stage 2: Ready to harvest
        
        // Kurangi ember air
        global.waterbucket -= 1;
    }
    
    // --- STAGE 2: PANEN ---
    else if (stage == 2) {
		stage = 0;
		image_index = 0;
		word = "plant";
        image_blend = c_white; // Reset color
        
        if (plant_type == "carrot") {
		    global.carrot += 5;
        } else if (plant_type == "potato") {
            global.potato += 8; // Potatoes give more but cost less to sell? Or different balance
        }
        
        plant_type = "";
	}
}