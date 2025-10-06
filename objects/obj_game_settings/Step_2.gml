with (all) {
    if (!on_ui_layer)
        depth = -bbox_bottom;
}

var _gamepad = global.main_gamepad;


if (_gamepad != undefined) {
    _key_pause = real(gamepad_button_check_pressed(_gamepad, gp_start));
}



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