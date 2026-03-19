if (player_near) {
    var _typed = string_lower(obj_budi.typedWord);
    
    if (_typed == "collect water" || _typed == "collectwater") {
        
        // --- FASE TUTORIAL (Index 0) ---
        if (global.tutorial_index == 0 && show_collectwater == true) {
            // Isi air langsung sampai batas maksimal (hasil upgrade)
            global.waterbucket = global.water_max_capacity;
            show_debug_message("Water bucket filled (Tutorial)");

            if (instance_exists(obj_quest_manager)) {
                obj_quest_manager.complete_quest("collect_water");
            }

            // Selesaikan tutorial
            global.tutorial_index = 1;
            show_collectwater = false;
            obj_wateryourcrops.showing = true;
        }
        
        // --- FASE SETELAH TUTORIAL ---
        else if (global.tutorial_index == 1) {
            if (global.waterbucket < global.water_max_capacity) {
                global.waterbucket = global.water_max_capacity;
                show_debug_message("Water bucket filled");
                
                // [TAMBAHAN BARU] Lapor ke Quest Manager juga di sini
                if (instance_exists(obj_quest_manager)) {
                    obj_quest_manager.complete_quest("collect_water");
                }
            } 
            else {
                show_message("Ember penuh! Maks: " + string(global.water_max_capacity));
            }
            
            show_collectwater = false;
        }
    }
}

obj_budi.typedWord = "";