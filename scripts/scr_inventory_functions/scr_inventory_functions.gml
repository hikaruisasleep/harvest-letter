function inventory_has(item) {
    return ds_list_find_index(obj_inventory.items, item) != -1;
}

function inventory_add(item_obj, item_name, item_price, item_sprite) {
    // 1. Tambah ke ds_list (untuk logika internal kamu)
    if (!inventory_has(item_obj)) {
        ds_list_add(obj_inventory.items, item_obj);
    }

    // 2. Tambah ke global.inv_player (agar muncul di Toko/Shop)
    for (var i = 0; i < array_length(global.inv_player); i++) {
        if (global.inv_player[i] == -1) { // Cari slot kosong
            global.inv_player[i] = {
                name: item_name,
                price: item_price,
                sprite: item_sprite
            };
            break; 
        }
    }
}