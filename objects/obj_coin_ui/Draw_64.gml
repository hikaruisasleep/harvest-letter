
if (!instance_exists(obj_popup_sleep)) {
    // 1. Gambar dulu Bar Duit-nya biar muncul di layer GUI juga
    draw_self(); 

    draw_set_font(fnt_coin);
    draw_set_color(#643E24);
    
    // Set text alignment biar rapi (opsional tapi bagus)
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);

    var c = scr_coin_get();

    // 2. Tentukan posisi Text RELATIF terhadap object
    // x + 60 artinya geser ke kanan dikit dari ujung kiri sprite
    // y + (sprite_height / 2) artinya pas di tengah-tengah vertikal sprite
    
    var xx = x + 120; 
    var yy = y + (sprite_height / 2); // Atau sesuaikan angka ini manual sampai pas

    draw_text(xx, yy, string(c));
}