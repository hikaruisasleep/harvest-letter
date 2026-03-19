draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Carrot count 
draw_set_color($FF123960);
draw_text_transformed(center_x - 24, center_y - 120,
    string(global.carrot) + "/" + string(global.demand_carrot), 0.7, 0.7, 0);

// Reward money 
draw_set_color(c_orange);
draw_text(center_x + 10, center_y + 53, string(global.reward_money));

// Reset alignment for other text
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);