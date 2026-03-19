display_alpha = 1; // 1 artinya 100% terlihat (tidak transparan)

// 1. Inisialisasi Daftar Misi
quests = [];

// Fungsi untuk menambah misi ke daftar
function add_quest(_id, _desc) {
    array_push(quests, { q_id: _id, desc: _desc, finished: false });
}

// 2. Variabel Kontrol Tampilan Utama
display_text = "";
display_done = false;

// Variabel Kontrol Interupsi (Untuk misi yang tidak urut)
override_timer = 0;
last_finished_desc = "";

// 3. Registrasi Otomatis dari global.tutor_tasks
// Pastikan obj_game sudah di-create sebelum objek ini
for (var i = 0; i < array_length(global.tutor_tasks); i++) {
    var _desc = global.tutor_tasks[i];
    var _id = "";
    
    // Memetakan index array ke ID yang kamu gunakan sebelumnya
    switch(i) {
        case 0: _id = "open_mail"; break;
        case 1: _id = "collect_seeds"; break;
        case 2: _id = "plant_seeds"; break;
        case 3: _id = "collect_water"; break;
        case 4: _id = "water_crops"; break;
        case 5: _id = "sleep"; break;
        default: _id = "quest_" + string(i); break; // Jaga-jaga jika task ditambah di obj_game
    }
    
    add_quest(_id, _desc);
}

// 4. Fungsi untuk Menyelesaikan Misi (Akan dipanggil dari objek lain)
function complete_quest(_id) {
    for (var i = 0; i < array_length(quests); i++) {
        // Cari ID misi yang cocok dan pastikan belum selesai
        if (quests[i].q_id == _id && !quests[i].finished) {
            quests[i].finished = true;
            
            // Aktifkan Interupsi: Tampilkan misi ini dengan centang selama 3 detik
            last_finished_desc = quests[i].desc;
            override_timer = room_speed * 1; 
            
            show_debug_message("Quest Completed: " + _id);
            return true;
        }
    }
    return false;
}