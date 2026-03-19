// 1. Jika ada misi yang baru selesai, tampilkan secara paksa (Interupsi)
if (override_timer > 0) {
    override_timer -= 1;
    display_text = last_finished_desc;
    display_done = true; // Langsung munculkan centang hijau
} 
// 2. Jika tidak ada interupsi, kembali ke urutan misi yang belum selesai
else {
    var _found = false;
    for (var i = 0; i < array_length(quests); i++) {
        if (!quests[i].finished) {
            display_text = quests[i].desc;
            display_done = false;
            _found = true;
            break; // Berhenti mencari setelah menemukan 1 misi aktif
        }
    }
    
    // Jika semua misi sudah diselesaikan
    if (!_found) {
        display_text = "All tasks completed!";
        display_done = true;
    }
}