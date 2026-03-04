gui_mouse_x = device_mouse_x_to_gui(0)
gui_mouse_y = device_mouse_y_to_gui(0)
if((gui_mouse_x >= 150 && gui_mouse_x <= 230) && (gui_mouse_y >= 10 && gui_mouse_y <= 100)){
	obj_game.show_todolist = !obj_game.show_todolist;
}