var _key_pause = real(keyboard_check_pressed(vk_escape));

if (_key_pause) {
    if (!instance_exists(obj_pause_menu))
        instance_create_depth(x, y, depth, obj_pause_menu);
    else
        instance_destroy(obj_pause_menu);
}