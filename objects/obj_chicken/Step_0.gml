if(instance_place(x, y, obj_budi)){
	is_colliding = true
} else {
	is_colliding = false
}

if (stage == 1) {
    if (day_counter < 2) {
        word = "wait";
    } else {
        word = "collect";
    }
} else if (stage == 0) {
    word = "feed";
}
