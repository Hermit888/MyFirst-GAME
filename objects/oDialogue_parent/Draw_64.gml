/// @description 

// background
draw_set_color(background);
draw_rectangle(0, 0 , 1366, 798, false);

if(showing_dialog == true) {
	// init to draw the dialogues
	var base = display_get_gui_height()-200;
	
	var text_x = 30;
	var text_y = 18;
	var height = 32;
	var border = 5;
	var padding = 16;
	
	
	height = string_height(current_dialog.message);
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite);
	}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0, 0+base, display_get_gui_width(), base+height, false);
	
	draw_set_color(c_white);
	draw_rectangle(border, base+border, display_get_gui_width() - border, base+height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2), base+(border * 2), display_get_gui_width() - (border * 2), base+height - (border * 2), false);
	
	if(current_dialog.sprite != -1) {
		draw_sprite(current_dialog.sprite, 0, border * 3, base+border * 3);
	}
	
	draw_set_color(c_white);
	draw_text_ext(text_x, base+text_y, current_dialog.message, 16, display_get_gui_width() - 192);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);