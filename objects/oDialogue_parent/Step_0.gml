/// @description 

if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		instance_destroy();
		room_goto(next_room);
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	if(mouse_check_button_released(mouse_next) || keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}