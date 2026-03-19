/// scr_trade_carrots()

// Check if player has enough carrots
if (global.carrot >= global.demand_carrot) {
    // Deduct carrots and add coins
    global.carrot -= global.demand_carrot;
    global.coins  += global.reward_money;

    // Roll new demand for next time (fixed at 2)
    global.demand_carrot = 2;
    global.reward_money  = global.demand_carrot * 25;

    // Close Ms. Anne, the sellcarrot panel, and the buttons (success case)
    if (instance_exists(obj_MsAnne))     with (obj_MsAnne)     instance_destroy();
    if (instance_exists(obj_Sellcarrot)) with (obj_Sellcarrot) instance_destroy();
    if (instance_exists(obj_Give))       with (obj_Give)       instance_destroy();
    if (instance_exists(obj_NotEnough))  with (obj_NotEnough)  instance_destroy();

    // Reset flags & movement BEFORE return
    global.popup_open = false;
    with (obj_cycle_time) alarm[0] = room_speed * 0.2;
    with (obj_budi) spd = 1;

    return true;

} else {
    // Close Ms. Anne and panel first
    if (instance_exists(obj_MsAnne))     with (obj_MsAnne)     instance_destroy();
    if (instance_exists(obj_Sellcarrot)) with (obj_Sellcarrot) instance_destroy();
    if (instance_exists(obj_Give))       with (obj_Give)       instance_destroy();
    if (instance_exists(obj_NotEnough))  with (obj_NotEnough)  instance_destroy();

    // Show message after closing
    show_message("Not enough carrots!");

    // Reset flags & movement BEFORE return
    global.popup_open = false;
    with (obj_cycle_time) alarm[0] = room_speed * 0.2;
    with (obj_budi) spd = 1;

    return false;
}