// Cek apakah kata yang diketik Budi cocok dengan target word dan Budi sedang berada di lahan ini
if (obj_budi.typedWord == word && instance_place(x, y, obj_budi)) {
    
    // --- STAGE 0: MENANAM ---
    if (stage == 0) {
        // PERBAIKAN: Langsung cek variabel angkanya, tidak perlu loop array lagi
        if (global.carrotseed > 0) {        
            // Reset ketikan Budi & Lanjut ke tahap siram
            obj_budi.typedWord = "";
            stage = 1;
            word = "water";
            
            // Kurangi bibit
            global.carrotseed -= 1;
            
            // Munculkan popup QTE
            instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        } 
        else {
            // Jika tidak ada bibit
            show_message("Kamu tidak punya bibit!");
            obj_budi.typedWord = "";
            return;
        }
    } 
    
    // --- STAGE 1: MENYIRAM ---
    else if (stage == 1) {
        // Cek apakah player punya ember air
        if (global.waterbucket <= 0) {
            show_message("You need water!");
            obj_budi.typedWord = "";
            return;
        }
        
        obj_budi.typedWord = "";
        instance_create_layer(room_width / 2, room_height / 2, "UI", obj_popup);
        
        stage = 2;
        word = "collect";
        is_watered = true;
        
        // Kurangi ember air
        global.waterbucket -= 1;
    }
    
    // --- STAGE 2: PANEN ---
    // Logika panen biasanya ada di obj_budi saat menekan Enter, 
    // tapi pastikan stage bertambah agar instruksi "collect" muncul.
}