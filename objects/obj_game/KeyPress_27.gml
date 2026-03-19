

/// @description Execute Code

// --- TAMBAHKAN 'IF' INI DI PALING ATAS ---
// Cek: Apakah To-Do List sedang terbuka?
if (show_shop_ui == true) {
    
    // Kalau IYA, baru jalankan proses tutup & hapus memori
    show_shop_ui = false;
    keyboard_lastchar = "";
    obj_budi.typedWord = "";
	global.popup_open = false;
    
    // Hapus ESC supaya Pause TIDAK jalan
    io_clear();
}


if (show_todolist == true) {
    
    // Kalau IYA, baru jalankan proses tutup & hapus memori
    show_todolist = false;
    keyboard_lastchar = "";
    obj_budi.typedWord = "";
    
    // Hapus ESC supaya Pause TIDAK jalan
    io_clear();
}
// Kalau show_todolist == false, kode di atas dilewati, 
// jadi tombol ESC bebas dibaca oleh obj_pause.

if (show_upgradeUI == true) {
	instance_destroy(obj_upgrade_UI);
	show_upgradeUI = false;
	keyboard_lastchar = "";
    obj_budi.typedWord = "";
	
	obj_cycle_time.alarm[0] = room_speed * 0.2;
	obj_budi.spd = 1;
	global.popup_open = false;
	
	
	io_clear();
}
