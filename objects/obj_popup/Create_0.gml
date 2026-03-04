randomise();

var global_words = [
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
  "pasture",
  "sprout",
  "seedling",
  "plantation",
  "produce",
  "cropdust",
  "germinate",
  "harvester",
  "storage",
  "yield"
]; 



// 2. Kita siapkan daftar kosong untuk tugas pop-up ini
tugas_list = []; 

// 3. Tentukan mau berapa kata beruntun? (Misal: 3 kata)
var jumlah_soal = 5; 

// 4. Loop untuk mengambil 3 kata acak dan memasukkannya ke tugas_list
repeat(jumlah_soal) {
    var index_acak = irandom(array_length(global_words) - 1);
    array_push(tugas_list, global_words[index_acak]);
}

// 5. Variabel penunjuk: Kita sedang ada di kata nomor berapa?
// Dimulai dari 0 (kata pertama)
index_sekarang = 0;

obj_budi.typedWord = ""
global.popup_open = true;