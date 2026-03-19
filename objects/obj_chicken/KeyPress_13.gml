// Simplified harvesting: No QTE, no feeding
if (is_ready && is_colliding && string_lower(obj_budi.typedWord) == word) {
    global.egg += 3;
    last_harvest_day = global.hari;
    is_ready = false;
    obj_budi.typedWord = "";
}
