// Cek apakah kata yang diketik Budi cocok dengan target word dan Budi sedang berada di lahan ini
if (obj_budi.typedWord == word && instance_place(x, y, obj_budi)) {
    
    // --- STAGE 0: MENANAM ---
    if (stage == 0) {
        var _has_seed = false;
        var _seed_index = -1;

        // 1. Cari item bernama "Carrot Seed" di dalam array inventory (Data dari Shop)
        for (var i = 0; i < array_length(global.inv_player); i++) {
            var _item = global.inv_player[i];
            
            // Pastikan nama item sama persis dengan yang ada di Toko
            if (_item != -1 && (_item.name == "Carrot Seed" || _item.name == "Carrot")) {
                _has_seed = true;
                _seed_index = i;
                break; 
            }
        }

        // 2. Jika Bibit Ditemukan
        if (_has_seed) {       
            // C. Reset ketikan Budi & Lanjut ke tahap siram
             obj_budi.typedWord = "";
            stage = 1;
            word = "water";
			global.carrotseed -= 1;
            
            // Munculkan popup QTE
            instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        } 
        else {
            // Jika tidak ada bibit di array inv_player
            show_message("Kamu tidak punya bibit!");
            obj_budi.typedWord = "";
            return;
        }
    } 
    
    // --- STAGE 1: MENYIRAM ---
    else if (stage == 1) {
        // Cek apakah player punya ember air (asumsi fungsi inventory_has sudah ada)
        if (global.waterbucket == 0) {
            show_message("You need water!");
            obj_budi.typedWord = "";
            return;
        }
        
        obj_budi.typedWord = "";
        instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        
        stage = 2;
        word = "collect";
        is_watered = true;
		global.waterbucket -= 1
    }
    
    // --- STAGE 2: PANEN ---
	else if (stage == 2) {
		inventory_add(obj_carrot)
		obj_tutor_complete.showing = true;
		image_index = 0;
		stage = 0;
		if (!instance_exists(obj_new_day)) instance_create_depth(0, 0, -10000, obj_new_day);
		if (!instance_exists(obj_mainmenu_btn_1)) instance_create_depth(0, 0, -10000, obj_mainmenu_btn_1);
	}
    // Logika panen biasanya ada di obj_budi saat menekan Enter, 
    // tapi pastikan stage bertambah agar instruksi "collect" muncul.
}