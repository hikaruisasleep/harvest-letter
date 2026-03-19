// Update readiness
if (global.hari - last_harvest_day >= 2) {
    is_ready = true;
} else {
    is_ready = false;
}

// Collision check
if(instance_place(x, y, obj_budi)){
	is_colliding = true
} else {
	is_colliding = false
}
