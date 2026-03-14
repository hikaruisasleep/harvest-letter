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
    
    // Kamu bisa tambah item lain di slot index 1, 2, dst.
}