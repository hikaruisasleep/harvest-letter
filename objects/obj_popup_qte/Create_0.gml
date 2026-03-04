randomise();
depth = -30;

// 1. DAFTAR TUGAS (Array 1D berisi string pendek)
var multi_line_tasks = [
"harvest",
  "crop",
  "plow",
  "seed",
  "soil",
  "tractor",
  "barn",
  "field",
  "watering",
  "fertilizer",
  "scarecrow",
  "greenhouse",
  "sprinkler",
  "irrigation",
  "grain",
  "hay",
  "orchard",
  "vineyard",
  "compost",
  "weed",
  "hoe",
  "shovel",
  "rake",
  "wheelbarrow",
  "sickle",
  "farmhouse",
  "windmill",
];

// 2. Kita siapkan daftar kosong untuk tugas pop-up ini
tugas_list = []; 

// 3. Tentukan mau berapa kata beruntun? (Misal: 3 kata)
var jumlah_soal = 5; 

// 4. Loop untuk mengambil 3 kata acak dan memasukkannya ke tugas_list
repeat(jumlah_soal) {
    // UBAH global_words menjadi multi_line_tasks
    var index_acak = irandom(array_length(multi_line_tasks) - 1);
    array_push(tugas_list, multi_line_tasks[index_acak]);
}

// 5. Variabel penunjuk: Kita sedang ada di kata nomor berapa?
// Dimulai dari 0 (kata pertama)
index_sekarang = 0;

obj_budi.typedWord = ""
obj_budi.spd = 0
global.popup_open = true;

// 6. Variabel Countdown
var _fps = game_get_speed(gamespeed_fps); 
countdown_total = 30 * _fps; 
alarm[0] = countdown_total;