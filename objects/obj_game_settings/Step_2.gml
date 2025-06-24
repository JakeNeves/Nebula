/*if (keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_start) && room != rm_menu) {
	global.game_paused = !global.game_paused;
	
	if (global.game_paused) {
		with (all) {
			other.game_paused_img_spd = image_speed;
			image_speed = 0;
		}
        
        instance_create_depth(x, y, -999, obj_pause_menu);
	}
	else {
		with (all) 
			image_speed = other.game_paused_img_spd;
        
        instance_destroy(obj_pause_menu);
	}
}*/

if (keyboard_check_pressed(vk_f11)) {
    window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(vk_tab)) {
	if (!is_debug_overlay_open())
		show_debug_log(true)
	else {
		if (!is_keyboard_used_debug_overlay())
			show_debug_log(false);
	}
}

if (room != rm_menu)
    layer_set_visible("Collidable", false);