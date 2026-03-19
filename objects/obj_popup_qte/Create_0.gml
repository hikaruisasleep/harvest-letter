/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07E7AAD8
/// @DnDArgument : "code" "randomise();$(13_10)depth = -30;$(13_10)$(13_10)// 1. Daftar kata$(13_10)var multi_line_tasks = [$(13_10)  "harvest", "crop", "plow", "seed", "soil", "tractor", "barn", "field",$(13_10)  "watering", "fertilizer", "scarecrow", "greenhouse", "sprinkler", "irrigation",$(13_10)  "grain", "hay", "orchard", "vineyard", "compost", "weed", "hoe", "shovel",$(13_10)  "rake", "wheelbarrow", "sickle", "farmhouse", "windmill"$(13_10)];$(13_10)$(13_10)tugas_list = []; $(13_10)$(13_10)// 2. Upgrade system nya$(13_10)var jumlah_soal = max(1, global.qte_base_words - global.upgrade_qte_level); $(13_10)$(13_10)// 3. Jumlah Kata$(13_10)repeat(jumlah_soal) {$(13_10)    var index_acak = irandom(array_length(multi_line_tasks) - 1);$(13_10)    array_push(tugas_list, multi_line_tasks[index_acak]);$(13_10)}$(13_10)$(13_10)// 4. Sistem QTE$(13_10)index_sekarang = 0;$(13_10)$(13_10)obj_budi.typedWord = "";$(13_10)obj_budi.spd = 0;$(13_10)global.popup_open = true;$(13_10)$(13_10)// 5. Timer$(13_10)var _fps = game_get_speed(gamespeed_fps); $(13_10)var _waktu_dasar = 30;$(13_10)var _waktu_tambahan = global.upgrade_qte_level * 5;$(13_10)$(13_10)$(13_10)countdown_total = (_waktu_dasar + _waktu_tambahan) * _fps; $(13_10)alarm[0] = countdown_total;"
randomise();
depth = -30;

// 1. Daftar kata
var multi_line_tasks = [
  "harvest", "crop", "plow", "seed", "soil", "tractor", "barn", "field",
  "watering", "fertilizer", "scarecrow", "greenhouse", "sprinkler", "irrigation",
  "grain", "hay", "orchard", "vineyard", "compost", "weed", "hoe", "shovel",
  "rake", "wheelbarrow", "sickle", "farmhouse", "windmill"
];

tugas_list = []; 

// 2. Upgrade system nya
var jumlah_soal = max(1, global.qte_base_words - global.upgrade_qte_level); 

// 3. Jumlah Kata
repeat(jumlah_soal) {
    var index_acak = irandom(array_length(multi_line_tasks) - 1);
    array_push(tugas_list, multi_line_tasks[index_acak]);
}

// 4. Sistem QTE
index_sekarang = 0;

obj_budi.typedWord = "";
obj_budi.spd = 0;
global.popup_open = true;

// 5. Timer
var _fps = game_get_speed(gamespeed_fps); 
var _waktu_dasar = 30;
var _waktu_tambahan = global.upgrade_qte_level * 5;


countdown_total = (_waktu_dasar + _waktu_tambahan) * _fps; 
alarm[0] = countdown_total;