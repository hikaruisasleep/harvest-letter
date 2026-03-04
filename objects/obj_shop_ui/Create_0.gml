items_toko = []; //list item in shop
if (instance_exists(obj_truck)) {
    items_toko = obj_truck.shop_items;
}

//Mouse Drag Logic
held_item = -1;       
held_from = "";       
held_index = -1;