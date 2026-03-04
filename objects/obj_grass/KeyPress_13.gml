var l02409F43_0 = false;
l02409F43_0 = instance_exists(obj_popup);
if(l02409F43_0)
{
	if(string_trim(obj_budi.typedWord) == obj_popup.tugas_list[obj_popup.index_sekarang])
{
	obj_popup.index_sekarang += 1;
	
		show_debug_message(string("debug message"));
	
		obj_budi.typedWord = "";
	
		if(obj_popup.index_sekarang >= array_length(obj_popup.tugas_list))
{
			global.popup_open = false;
			
			obj_budi.spd = 1
		
			var temp_var = array_push(obj_game.completed_tasks, obj_game.selected_task.task_position);
		
			instance_destroy(obj_game.selected_task);
		
			with(obj_popup) instance_destroy();
}
}
} 

exit;