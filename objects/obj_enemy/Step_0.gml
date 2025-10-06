if (instance_exists(obj_textbox))
    exit;

if (alarm[1] >= 0) {
    target_x = x + knockback_x;
    target_y = y + knockback_y;
}

var _enemy_x = clamp(target_x - x, -1, 1);
var _enemy_y = clamp(target_y - y, -1, 1);

move_and_collide(_enemy_x * movement_speed, _enemy_y * movement_speed, [collidable_map, obj_collidable, obj_enemy]);

if (directional_animations) {
    if (_enemy_x != 0 || _enemy_y != 0) {
        if (horizontal_animations) {
            if (_enemy_x > 0)
                sprite_index = move_east_sprite;
    
            if (_enemy_x < 0)
                sprite_index = move_west_sprite;
        }
    
        if (_enemy_y > 0)
            sprite_index = move_south_sprite;
    
        if (_enemy_y < 0)
            sprite_index = move_north_sprite;
     
        npc_dir = point_direction(0, 0, target_x, target_y);
    }
    else {
        if (horizontal_animations) {
            if (sprite_index == move_east_sprite)
                sprite_index = stand_east_sprite;
    
            if (sprite_index == move_west_sprite)
                sprite_index = stand_west_sprite;
        }
    
        if (sprite_index == move_south_sprite)
            sprite_index = stand_south_sprite;
    
        if (sprite_index == move_north_sprite)
            sprite_index = stand_north_sprite;
    }
}