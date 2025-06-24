var _gamepad = async_load[? "pad_index"];

switch (async_load[? "event_type"]) {
    case "gamepad discovered":
        array_push(global.num_gamepads, _gamepad);
        gamepad_set_axis_deadzone(_gamepad, 0.2);
		show_debug_message($"Gamepad Connected: {_gamepad}");
        break;
    case "gamepad lost":
        var _array_index = array_get_index(global.num_gamepads, _gamepad);
		show_debug_message("Please Reconnect Gamepad!");
        if (_array_index >= 0)
            array_delete(global.num_gamepads, _array_index, 1);
        break
}

if (array_length(global.num_gamepads) > 0) 
    global.main_gamepad = global.num_gamepads[0];
else
	global.main_gamepad = undefined;