// if (window_get_width() != window_width || window_get_height() != window_height)
//    display_set_gui_maximize();

if (instance_exists(obj_pause_manager))
    exit;

var _plr_x_input = real(keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _plr_y_input = real(keyboard_check(ord("S")) - keyboard_check(ord("W")));
var _plr_sprint = keyboard_check(vk_shift)

var _key_attack = real(keyboard_check(ord("C")));

var _gamepad = global.main_gamepad;

if (_gamepad != undefined) {
    _plr_x_input = real(gamepad_button_check(_gamepad, gp_padr) - gamepad_button_check(_gamepad, gp_padl));
    _plr_y_input = real(gamepad_button_check(_gamepad, gp_padd) - gamepad_button_check(_gamepad, gp_padu));
    _plr_sprint = real(gamepad_button_check(_gamepad, gp_face3));
    _key_attack = real(gamepad_button_check(_gamepad, gp_shoulderr));
}

if (plr_hp < plr_hp_max) {
    can_regenerate_hp = true;
    
    if (regen_time == regen_time_max && can_regenerate_hp)
            regen_time--;
    
    if (regen_time <= 0) {
        plr_hp += regen_rate;
        regen_time = regen_time_max
    }
}
else {
    can_regenerate_hp = false;
    
    regen_time = regen_time_max
}

if (money > money_max)
    money = money_max;

if (_plr_sprint)
    plr_speed = plr_sprint_speed;
else
    plr_speed = plr_walk_speed;

if (!is_keyboard_used_debug_overlay()) {
    if (plr_noclip)
        move_and_collide(_plr_x_input * plr_speed, _plr_y_input * plr_speed, layer_tilemap_get_id(""), undefined, undefined, undefined, plr_speed, plr_speed);        
    else
        move_and_collide(_plr_x_input * plr_speed, _plr_y_input * plr_speed, collidable_map, undefined, undefined, undefined, plr_speed, plr_speed);
}

if (_plr_x_input != 0 || _plr_y_input != 0) {
    if (_plr_y_input > 0) {
        if (_plr_sprint)
            sprite_index = spr_mainchara_run_south;
        else
            sprite_index = spr_mainchara_walk_south;
    }
    
    if (_plr_y_input < 0) {
        if (_plr_sprint)
            sprite_index = spr_mainchara_run_north;
        else
            sprite_index = spr_mainchara_walk_north;
    }

    if (_plr_x_input > 0) {
        if (_plr_sprint)
            sprite_index = spr_mainchara_run_east;
        else
            sprite_index = spr_mainchara_walk_east;
    }
    
    if (_plr_x_input < 0) {
        if (_plr_sprint)
            sprite_index = spr_mainchara_run_west; 
        else 
            sprite_index = spr_mainchara_walk_west;
    }
        
    plr_direction = point_direction(0, 0, _plr_x_input, _plr_y_input);
}
else { 
    if (sprite_index == spr_mainchara_walk_south || sprite_index == spr_mainchara_run_south)
        sprite_index = spr_mainchara_south;
        
    if (sprite_index == spr_mainchara_walk_north || sprite_index == spr_mainchara_run_north)
        sprite_index = spr_mainchara_north;
        
    if (sprite_index == spr_mainchara_walk_east || sprite_index == spr_mainchara_run_east) 
        sprite_index = spr_mainchara_east;
        
    if (sprite_index == spr_mainchara_walk_west || sprite_index == spr_mainchara_run_west)
        sprite_index = spr_mainchara_west;
}

if (_key_attack && !instance_exists(obj_mainchara_attack) && !is_keyboard_used_debug_overlay()) {
    var _atk_inst = instance_create_depth(x, y, depth, obj_mainchara_attack);
    
    _atk_inst.image_angle = plr_direction;
    _atk_inst.damage *= plr_damage;
}