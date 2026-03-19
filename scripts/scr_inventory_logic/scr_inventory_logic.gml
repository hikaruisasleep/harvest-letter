function inventory_sync_to_array() {
    // 1. Kosongkan array visual (Reset tas)
    for (var i = 0; i < array_length(global.inv_player); i++) {
        global.inv_player[i] = -1;
    }

    // 2. Isi HANYA SATU SLOT untuk bibit wortel (Sistem Stacking)
    if (global.carrotseed > 0) {
        global.inv_player[0] = { 
            name: "Carrot Seed", 
            price: 100, 
            sprite: spr_carrot_seed,
            amount: global.carrotseed // Simpan jumlah total di sini
        };
    }
    
    // 3. Stacking untuk Kentang
    if (global.potatoseed > 0) {
        global.inv_player[1] = { 
            name: "Potato Seed", 
            price: 50, 
            sprite: spr_carrot_seed,
            amount: global.potatoseed 
        };
    }
}