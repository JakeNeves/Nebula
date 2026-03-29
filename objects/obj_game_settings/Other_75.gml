var _gamepad = async_load[? "pad_index"];

switch (async_load[? "event_type"]) {
    case "gamepad discovered":
        array_push(global.gamepads, _gamepad);
        break;
    
    case "gamepad lost":
        var _index = array_get_index(global.gamepads, _gamepad);
        if (_index >= 0)
            array_delete(global.gamepads, _index, 1);
        break;
}

if (array_length(global.gamepads) > 0)
    global.main_gamepad = global.gamepads[0];
else
    global.main_gamepad = undefined;