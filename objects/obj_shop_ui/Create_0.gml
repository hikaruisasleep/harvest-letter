mode = "buy"; 
selected_item = -1;
obj_game.show_shop_ui = true;

// Posisi Shop (Otomatis ke tengah layar meski origin top-left)
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

sw = sprite_get_width(spr_shopbg);
sh = sprite_get_height(spr_shopbg);

bx = (_gui_w - sw) / 2;
by = (_gui_h - sh) / 2;

// --- DAFTAR BARANG ---
items_buy = [
    { name: "Carrot's Seed", price: 300, sprite: spr_carrot_seed, qty: 1, object: undefined },
    { name: "Potato's Seed", price: 200, sprite: spr_carrot_seed, qty: 1, object: undefined },
    { name: "Grass", price: 100, sprite: spr_grass, qty: 1, object: undefined },
	{ name: "Farm Land", price: 1000, sprite: spr_growth_shop , qty: 1, object: undefined },
    { name: "Chicken", price: 1500, sprite: spr_cow, qty: 1, object: undefined }
];

items_sell = [
    { name: "Carrot", price: 150, sprite: spr_carrot, qty: 1 },
    { name: "Potato", price: 100, sprite: spr_carrot, qty: 1 },
    { name: "Milk", price: 200, sprite: spr_waterbucket, qty: 1 },
    { name: "Egg", price: 50, sprite: spr_dots, qty: 1 }
];