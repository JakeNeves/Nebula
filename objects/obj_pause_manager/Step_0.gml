var _key_pause = real(keyboard_check_pressed(vk_escape));

var _gamepad = global.main_gamepad;

if (_gamepad != undefined)
    _key_pause = real(gamepad_button_check(_gamepad, gp_start));

if (_key_pause) {
    if (!instance_exists(obj_pause_menu))
        instance_create_depth(x, y, depth, obj_pause_menu);
    else
        instance_destroy(obj_pause_menu);
}