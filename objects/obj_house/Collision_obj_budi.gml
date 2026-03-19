if (global.jam_sekarang >= 18 || global.jam_sekarang <= 5)
{
    // --- 1. Atur Posisi Budi ---
    obj_budi.x = 576;
    obj_budi.y = 416;
    obj_budi.spd = 0;
    
    // --- 2. LOGIKA KAMERA (Pengganti GUI) ---
    // Kita cari titik tengah layar kamera saat ini
    var cam = view_camera[0];
    var cx = camera_get_view_x(cam) + (camera_get_view_width(cam) / 2);
    var cy = camera_get_view_y(cam) + (camera_get_view_height(cam) / 2);

    // --- 3. Munculkan Object ---
    
    // Munculkan BLUR (disesuaikan biar pas layar)
    instance_create_layer(camera_get_view_x(cam), camera_get_view_y(cam), "UI", obj_blur);

    // Munculkan POPUP pas di tengah (cx, cy)
    var popup = instance_create_layer(cx, cy, "UI", obj_popup_sleep);
    
    // Munculkan TOMBOL CENTANG (relatif dari posisi popup)
    // Angka +80 dan +150 ini jarak tombol dari tengah popup. Ubah kalau kurang pas.
    instance_create_layer(cx + 10, cy + 240, "Instances", obj_nextday);

    // --- 4. Matikan Timer ---
    obj_cycle_time.alarm[0] = -1;
	
	global.waktu_qte_hari_ini = -1;
	global.sudah_muncul_hari_ini = false;
	
	// --- 5. Change Day ---
    global.jam_sekarang = 0;
    global.hari += 1;
	
	// --- 6. Ms. Anne muncul setiap hari ke-3, 6, 9, dst. ---
    if (global.hari mod 1 == 0) {
        show_debug_message("Hari ke-" + string(global.hari) + ": Spawn Ms. Anne");

        var anne = instance_create_layer(1503, 217, "Instances", obj_MsAnne);

        with (anne) {
            event_user(0); // panggil User Event 0 kalau ada
		}
	}

}