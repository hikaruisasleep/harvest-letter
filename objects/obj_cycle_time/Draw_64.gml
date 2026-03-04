/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 775C366F
/// @DnDArgument : "obj" "obj_popup_sleep"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_popup_sleep"
var l775C366F_0 = false;l775C366F_0 = instance_exists(obj_popup_sleep);if(!l775C366F_0){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3EB6FFB9
	/// @DnDParent : 775C366F
	/// @DnDArgument : "code" "// 1 // Event: obj_cycle_time -> Draw GUI$(13_10)$(13_10)// --- Pengaturan Gambar Teks (Waktu dan Hari) ---$(13_10)$(13_10)// 2. Set Font dan Perataan$(13_10)draw_set_font(fnt_time); // Gunakan font yang sudah Anda set$(13_10)draw_set_halign(fa_right); // Posisikan teks ke kanan$(13_10)draw_set_valign(fa_top);$(13_10)$(13_10)// 3. Atur Warna menjadi Coklat (Hex: #B8860B, Ganti jika Anda ingin warna lain)$(13_10)draw_set_colour($FF123960); $(13_10)// CATATAN: Jika Anda ingin menggunakan warna yang sama dengan di obj_dots, gunakan: draw_set_colour($FF123960);$(13_10)$(13_10)// 4. Tentukan Posisi$(13_10)var _margin = 15; // Margin 10 piksel dari sisi kanan$(13_10)var _x_pos = display_get_gui_width() - _margin; // X di kanan$(13_10)$(13_10)var _y_pos_hari = 10; // Y untuk hari$(13_10)var _y_pos_waktu = 60; // Y untuk waktu (di bawah hari)=$(13_10)$(13_10)// 5. Gambar Hari dan Waktu$(13_10)draw_text(_x_pos, _y_pos_hari, global.hari_display); // Hari di posisi kanan atas$(13_10)draw_text(_x_pos, _y_pos_waktu, global.waktu_display); // Waktu di bawah hari$(13_10)$(13_10)// 6. RESET ALIGNMENT (BARIS BARU - TAMBAHAN MINIMAL)$(13_10)draw_set_halign(fa_left);  // Kembalikan ke kiri (default)$(13_10)draw_set_valign(fa_top);   // Kembalikan ke atas (default)"
	// 1 // Event: obj_cycle_time -> Draw GUI
	
	// --- Pengaturan Gambar Teks (Waktu dan Hari) ---
	
	// 2. Set Font dan Perataan
	draw_set_font(fnt_time); // Gunakan font yang sudah Anda set
	draw_set_halign(fa_right); // Posisikan teks ke kanan
	draw_set_valign(fa_top);
	
	// 3. Atur Warna menjadi Coklat (Hex: #B8860B, Ganti jika Anda ingin warna lain)
	draw_set_colour($FF123960); 
	// CATATAN: Jika Anda ingin menggunakan warna yang sama dengan di obj_dots, gunakan: draw_set_colour($FF123960);
	
	// 4. Tentukan Posisi
	var _margin = 15; // Margin 10 piksel dari sisi kanan
	var _x_pos = display_get_gui_width() - _margin; // X di kanan
	
	var _y_pos_hari = 10; // Y untuk hari
	var _y_pos_waktu = 60; // Y untuk waktu (di bawah hari)=
	
	// 5. Gambar Hari dan Waktu
	draw_text(_x_pos, _y_pos_hari, global.hari_display); // Hari di posisi kanan atas
	draw_text(_x_pos, _y_pos_waktu, global.waktu_display); // Waktu di bawah hari
	
	// 6. RESET ALIGNMENT (BARIS BARU - TAMBAHAN MINIMAL)
	draw_set_halign(fa_left);  // Kembalikan ke kiri (default)
	draw_set_valign(fa_top);   // Kembalikan ke atas (default)}