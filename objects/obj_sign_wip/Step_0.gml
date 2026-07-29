depth = -bbox_bottom;

if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 12) {
    can_interact = true;
    
    if (_key_interact > 0) {
        with (instance_create_depth(x, y, depth, obj_textbox))
            create_dialogue("This area is not accessable right now, check back sometime in the future!", "sign")
    }
}
else {
    can_interact = false;
}