/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63F4E9B1
/// @DnDArgument : "code" "// Event: obj_cycle_time -> Create$(13_10)$(13_10)// --- Inisialisasi Waktu Utama ---$(13_10)alarm_set(0, room_speed * 1.4); $(13_10)global.jam_sekarang = 6;$(13_10)global.menit_sekarang = 0;$(13_10)global.hari = 1;$(13_10)$(13_10)// --- Inisialisasi Display dan Flag ---$(13_10)global.hari_sudah_diupdate = false;$(13_10)global.hari_display = "Hari 1";$(13_10)global.waktu_display = "6:00 AM";$(13_10)$(13_10)global.waktu_qte_hari_ini = -1;$(13_10)global.sudah_muncul_hari_ini = false;"
// Event: obj_cycle_time -> Create

// --- Inisialisasi Waktu Utama ---
alarm_set(0, room_speed * 1.4); 
global.jam_sekarang = 6;
global.menit_sekarang = 0;
global.hari = 1;

// --- Inisialisasi Display dan Flag ---
global.hari_sudah_diupdate = false;
global.hari_display = "Hari 1";
global.waktu_display = "6:00 AM";

global.waktu_qte_hari_ini = -1;
global.sudah_muncul_hari_ini = false;