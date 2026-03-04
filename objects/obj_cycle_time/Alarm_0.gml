/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 341000A0
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.menit_sekarang"
global.menit_sekarang += 10;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25CC650D
/// @DnDArgument : "expr" "global.menit_sekarang >= 60"
if(global.menit_sekarang >= 60){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E5A3BC0
	/// @DnDParent : 25CC650D
	/// @DnDArgument : "expr" "global.menit_sekarang  - 60"
	/// @DnDArgument : "var" "global.menit_sekarang"
	global.menit_sekarang = global.menit_sekarang  - 60;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E9873C3
	/// @DnDParent : 25CC650D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.jam_sekarang"
	global.jam_sekarang += 1;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 66114330
/// @DnDArgument : "expr" "global.jam_sekarang >= 24"
if(global.jam_sekarang >= 24){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4565BA8B
	/// @DnDParent : 66114330
	/// @DnDArgument : "var" "global.jam_sekarang"
	global.jam_sekarang = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4070B9D7
	/// @DnDParent : 66114330
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.hari"
	global.hari += +1;

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3DD0BDFA
	/// @DnDApplyTo : {obj_time_arrow2}
	/// @DnDParent : 66114330
	with(obj_time_arrow2) {
	event_user(0);
	}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BA1933E
/// @DnDArgument : "expr" ""AM""
/// @DnDArgument : "var" "_sufiks"
_sufiks = "AM";

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1C6E0AD4
/// @DnDArgument : "expr" "global.jam_sekarang >= 12"
if(global.jam_sekarang >= 12){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 230559E4
	/// @DnDParent : 1C6E0AD4
	/// @DnDArgument : "expr" ""PM""
	/// @DnDArgument : "var" "_sufiks"
	_sufiks = "PM";}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 199924A3
/// @DnDArgument : "expr" "global.jam_sekarang mod 12"
/// @DnDArgument : "var" "_jam_12"
_jam_12 = global.jam_sekarang mod 12;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 72C6A91F
/// @DnDArgument : "expr" "(global.jam_sekarang == 14 || global.jam_sekarang == 16) && (global.menit_sekarang == 0)"
if((global.jam_sekarang == 14 || global.jam_sekarang == 16) && (global.menit_sekarang == 0)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27403E19
	/// @DnDParent : 72C6A91F
	/// @DnDArgument : "xpos" "room_width /  2"
	/// @DnDArgument : "ypos" "room_height / 2"
	/// @DnDArgument : "objectid" "obj_popup_qte"
	/// @DnDArgument : "layer" ""QTE""
	/// @DnDSaveInfo : "objectid" "obj_popup_qte"
	instance_create_layer(room_width /  2, room_height / 2, "QTE", obj_popup_qte);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2AB49A6F
	/// @DnDParent : 72C6A91F
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 74AE1E63
/// @DnDArgument : "expr" "(global.jam_sekarang == 5 ) && (global.menit_sekarang == 0)"
if((global.jam_sekarang == 5 ) && (global.menit_sekarang == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 416F5716
	/// @DnDParent : 74AE1E63
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "obj_growth.image_index"
	obj_growth.image_index += +1;}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 612AA26D
/// @DnDArgument : "code" "// Event: obj_cycle_time -> Alarm 0 (Execute Code)$(13_10)$(13_10)// Menggunakan variabel global yang sudah ada untuk mendapatkan nilainya.$(13_10)var _jam_12_val = _jam_12; $(13_10)var _menit_val = global.menit_sekarang;$(13_10)var _sufiks_val = _sufiks;$(13_10)$(13_10)// 1. Logic Penanganan Jam 12:00 AM/PM$(13_10)if (_jam_12_val == 0) {$(13_10)    _jam_12_val = 12;$(13_10)}$(13_10)$(13_10)// 2. KUNCI FORMATTING 2 DIGIT:$(13_10)// Hasilkan string final dengan string_format() untuk jam dan menit.$(13_10)$(13_10)global.waktu_display = string_format(_jam_12_val, 2, 0) + ":" + (_menit_val == 0 ? string_format(0, 0, 0) : "") + string_format(_menit_val, 0, 0) + " " + _sufiks_val;$(13_10)$(13_10)// 3. Tetapkan variabel hari$(13_10)global.hari_display = "Hari " + string(global.hari);$(13_10)"
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

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 79D4C6BF
/// @DnDArgument : "obj" "obj_popup_qte"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_popup_qte"
var l79D4C6BF_0 = false;l79D4C6BF_0 = instance_exists(obj_popup_qte);if(!l79D4C6BF_0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6DCF2982
	/// @DnDParent : 79D4C6BF
	/// @DnDArgument : "steps" "room_speed * 0.2"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, room_speed * 0.2 + alarm_get(0));}