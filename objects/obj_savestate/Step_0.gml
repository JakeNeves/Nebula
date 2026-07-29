depth = -bbox_bottom;

if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

/// Controller Support Stuff!
var _gamepad = global.main_gamepad;
if (_gamepad != undefined) {
    _key_interact = real(gamepad_button_check(_gamepad, gp_face4))
}

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 16) {
    can_interact = true;
    
    if (_key_interact > 0)
        with (instance_create_depth(x, y, depth, obj_textbox))
            create_dialogue_from_id("save_prompt");
}
else {
    can_interact = false;
}