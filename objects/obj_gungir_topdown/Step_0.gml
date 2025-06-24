var _plr_x_input = real(keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _plr_y_input = real(keyboard_check(ord("S")) - keyboard_check(ord("W")));
var _plr_sprint = keyboard_check(vk_shift)

var _key_attack = real(keyboard_check(ord("C")));

if (!is_keyboard_used_debug_overlay()) {
    move_and_collide(_plr_x_input * move_speed, _plr_y_input * move_speed, collidable_map, undefined, undefined, undefined, move_speed, move_speed);
}

if (_plr_x_input > 0 && _plr_y_input < 0 || _plr_x_input > 0 && _plr_y_input > 0)
    image_angle = -15;
else if (_plr_x_input < 0 && _plr_y_input < 0 || _plr_x_input < 0 && _plr_y_input > 0)
    image_angle = 15;
else
    image_angle = 0;

if (_key_attack) {
    if (fire_count < fire_delay)
        fire_count++;
    else {
        fire_count = 0;
        audio_play_sound(snd_gungir_shoot, 8, false);
        instance_create_depth(x, y, depth, obj_gungir_shoot_topdown);
    }
}