if (place_meeting(x, y, obj_budi)) {
    // Ini "Event Collision"
    player_near = true;
    word = "collectwater";
} else {
    // Ini "Event Kebalikan Collision" (Saat TIDAK menyentuh)
    player_near = false;
    word = "";
}