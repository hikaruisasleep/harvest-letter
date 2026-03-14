// Hapus semua isi script lama, timpa dengan ini saja:

function inventory_add(_object_id) {
    // Pastikan obj_inventory ada sebelum memasukkan barang
    if (instance_exists(obj_inventory)) {
        ds_list_add(obj_inventory.items, _object_id);
    }
}