/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6097548F
/// @DnDArgument : "code" "global.menit_sekarang += 10;$(13_10)$(13_10)if(global.menit_sekarang >= 60)$(13_10){$(13_10)	global.menit_sekarang = global.menit_sekarang  - 60;$(13_10)$(13_10)	global.jam_sekarang += 1;$(13_10)}$(13_10)$(13_10)if(global.jam_sekarang >= 24)$(13_10){$(13_10)	global.jam_sekarang = 0;$(13_10)$(13_10)	global.hari += 1;$(13_10)	$(13_10)if (global.hari % 1 == 0) {$(13_10)	   $(13_10)	var anne = instance_create_layer(1503, 217, "Instances", obj_MsAnne);$(13_10)		    $(13_10)	event_user(0);$(13_10)	$(13_10)    _sufiks = 0;$(13_10)}$(13_10)$(13_10)	with(obj_time_arrow2) {$(13_10)	event_user(0);$(13_10)	}$(13_10)}$(13_10)$(13_10)_sufiks = "AM";$(13_10)$(13_10)if(global.jam_sekarang >= 12)$(13_10){$(13_10)	_sufiks = "PM";$(13_10)}$(13_10)$(13_10)_jam_12 = global.jam_sekarang mod 12;$(13_10)$(13_10)// 1. Tentukan Jadwal (Dilakukan segera saat hari baru dimulai / jam 0)$(13_10)if (global.jam_sekarang >= 14 && global.jam_sekarang <= 16 && global.waktu_qte_hari_ini == -1) $(13_10){$(13_10)    var daftar_pilihan = [$(13_10)        (14*60)+0,  (14*60)+10, (14*60)+20, (14*60)+30, (14*60)+40, (14*60)+50,$(13_10)        (15*60)+0,  (15*60)+10, (15*60)+20, (15*60)+30, (15*60)+40, (15*60)+50,$(13_10)        (16*60)+0$(13_10)    ];$(13_10)    $(13_10)    var index_acak = irandom(array_length(daftar_pilihan) - 1);$(13_10)    $(13_10)    // Menyimpan jadwal acak ke variabel global$(13_10)    global.waktu_qte_hari_ini = daftar_pilihan[index_acak];$(13_10)}$(13_10)$(13_10)// 2. Cek Eksekusi QTE$(13_10)if (global.waktu_qte_hari_ini != -1 && !global.sudah_muncul_hari_ini)$(13_10){$(13_10)    var waktu_sekarang = (global.jam_sekarang * 60) + global.menit_sekarang;$(13_10)$(13_10)    // Pakai >= agar jika waktu melompat per 10 menit, QTE tetap terdeteksi$(13_10)    if (waktu_sekarang >= global.waktu_qte_hari_ini)$(13_10)    {$(13_10)        // Pastikan tidak muncul lewat dari jam 16:00 (batas akhir)$(13_10)        if (waktu_sekarang <= (16*60)) $(13_10)        {$(13_10)            if (!instance_exists(obj_popup_qte)) $(13_10)            {$(13_10)                instance_create_layer(room_width / 2, room_height / 2, "QTE", obj_popup_qte);$(13_10)            }$(13_10)            // Kunci agar tidak muncul lagi di hari yang sama$(13_10)            global.sudah_muncul_hari_ini = true; $(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)// 3. Reset Harian (Dilakukan di akhir hari)$(13_10)if (global.jam_sekarang == 23 && global.menit_sekarang == 50)$(13_10){$(13_10)    global.waktu_qte_hari_ini = -1;$(13_10)    global.sudah_muncul_hari_ini = false;$(13_10)}$(13_10)$(13_10)if((global.jam_sekarang == 5 ) && (global.menit_sekarang == 0))$(13_10){$(13_10)	var layer_id = layer_get_id("Fields");$(13_10)$(13_10)	var fields = layer_get_all_elements(layer_id);$(13_10)$(13_10)	for(i = 0; i < array_length(fields); i += 1) {$(13_10)	var field = layer_instance_get_instance(fields[i]);$(13_10)	$(13_10)		if(field.is_watered == true)$(13_10){$(13_10)	field.image_index += +1;$(13_10)}$(13_10)}$(13_10)}$(13_10)$(13_10)// Event: obj_cycle_time -> Alarm 0 (Execute Code)$(13_10)$(13_10)// Menggunakan variabel global yang sudah ada untuk mendapatkan nilainya.$(13_10)var _jam_12_val = _jam_12; $(13_10)var _menit_val = global.menit_sekarang;$(13_10)var _sufiks_val = _sufiks;$(13_10)$(13_10)// 1. Logic Penanganan Jam 12:00 AM/PM$(13_10)if (_jam_12_val == 0) {$(13_10)    _jam_12_val = 12;$(13_10)}$(13_10)$(13_10)// 2. KUNCI FORMATTING 2 DIGIT:$(13_10)// Hasilkan string final dengan string_format() untuk jam dan menit.$(13_10)$(13_10)global.waktu_display = string_format(_jam_12_val, 2, 0) + ":" + (_menit_val == 0 ? string_format(0, 0, 0) : "") + string_format(_menit_val, 0, 0) + " " + _sufiks_val;$(13_10)$(13_10)// 3. Tetapkan variabel hari$(13_10)global.hari_display = "Hari " + string(global.hari);$(13_10)$(13_10)var l79D4C6BF_0 = false;$(13_10)$(13_10)l79D4C6BF_0 = (instance_exists(obj_popup_qte) || instance_exists(obj_upgrade_UI));$(13_10)$(13_10)if(!l79D4C6BF_0)$(13_10){$(13_10)	alarm_set(0, (room_speed * 0.3) + alarm_get(0));$(13_10)}$(13_10)"
global.menit_sekarang += 10;

if(global.menit_sekarang >= 60)
{
	global.menit_sekarang = global.menit_sekarang  - 60;

	global.jam_sekarang += 1;
}

if(global.jam_sekarang >= 24)
{
	global.jam_sekarang = 0;

	global.hari += 1;
	
if (global.hari % 1 == 0) {
	   
	var anne = instance_create_layer(1503, 217, "Instances", obj_MsAnne);
		    
	event_user(0);
	
    _sufiks = 0;
}

	with(obj_time_arrow2) {
	event_user(0);
	}
}

_sufiks = "AM";

if(global.jam_sekarang >= 12)
{
	_sufiks = "PM";
}

_jam_12 = global.jam_sekarang mod 12;

// 1. Tentukan Jadwal (Dilakukan segera saat hari baru dimulai / jam 0)
if (global.jam_sekarang >= 14 && global.jam_sekarang <= 16 && global.waktu_qte_hari_ini == -1) 
{
    var daftar_pilihan = [
        (14*60)+0,  (14*60)+10, (14*60)+20, (14*60)+30, (14*60)+40, (14*60)+50,
        (15*60)+0,  (15*60)+10, (15*60)+20, (15*60)+30, (15*60)+40, (15*60)+50,
        (16*60)+0
    ];
    
    var index_acak = irandom(array_length(daftar_pilihan) - 1);
    
    // Menyimpan jadwal acak ke variabel global
    global.waktu_qte_hari_ini = daftar_pilihan[index_acak];
}

// 2. Cek Eksekusi QTE
if (global.waktu_qte_hari_ini != -1 && !global.sudah_muncul_hari_ini)
{
    var waktu_sekarang = (global.jam_sekarang * 60) + global.menit_sekarang;

    // Pakai >= agar jika waktu melompat per 10 menit, QTE tetap terdeteksi
    if (waktu_sekarang >= global.waktu_qte_hari_ini)
    {
        // Pastikan tidak muncul lewat dari jam 16:00 (batas akhir)
        if (waktu_sekarang <= (16*60)) 
        {
            if (!instance_exists(obj_popup_qte)) 
            {
                instance_create_layer(room_width / 2, room_height / 2, "QTE", obj_popup_qte);
            }
            // Kunci agar tidak muncul lagi di hari yang sama
            global.sudah_muncul_hari_ini = true; 
        }
    }
}

// 3. Reset Harian (Dilakukan di akhir hari)
if (global.jam_sekarang == 23 && global.menit_sekarang == 50)
{
    global.waktu_qte_hari_ini = -1;
    global.sudah_muncul_hari_ini = false;
}

if((global.jam_sekarang == 5 ) && (global.menit_sekarang == 0))
{
	var layer_id = layer_get_id("Fields");

	var fields = layer_get_all_elements(layer_id);

	for(i = 0; i < array_length(fields); i += 1) {
	var field = layer_instance_get_instance(fields[i]);
	
		if(field.is_watered == true)
{
	field.image_index += +1;
}
}
}

// Event: obj_cycle_time -> Alarm 0 (Execute Code)

// Menggunakan variabel global yang sudah ada untuk mendapatkan nilainya.
var _jam_12_val = _jam_12; 
var _menit_val = global.menit_sekarang;
var _sufiks_val = _sufiks;

// 1. Logic Penanganan Jam 12:00 AM/PM
if (_jam_12_val == 0) {
    _jam_12_val = 12;
}

// 2. KUNCI FORMATTING 2 DIGIT:
// Hasilkan string final dengan string_format() untuk jam dan menit.

global.waktu_display = string_format(_jam_12_val, 2, 0) + ":" + (_menit_val == 0 ? string_format(0, 0, 0) : "") + string_format(_menit_val, 0, 0) + " " + _sufiks_val;

// 3. Tetapkan variabel hari
global.hari_display = "Hari " + string(global.hari);

var l79D4C6BF_0 = false;

l79D4C6BF_0 = (instance_exists(obj_popup_qte) || instance_exists(obj_upgrade_UI));

if(!l79D4C6BF_0)
{
	alarm_set(0, (room_speed * 0.3) + alarm_get(0));
}