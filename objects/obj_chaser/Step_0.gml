if (instance_exists(obj_textbox))
    exit;

if (alarm[1] >= 0) {
    target_x = x;
    target_y = y;
}

var _chaser_x = clamp(target_x - x, -1, 1);
var _chaser_y = clamp(target_y - y, -1, 1);

move_and_collide(_chaser_x * movement_speed, _chaser_y * movement_speed, [collidable_map, obj_enemy]);

if (_chaser_x != 0 || _chaser_y != 0) {
    if (_chaser_x > 0)
        sprite_index = walk_east_sprite;
    
    if (_chaser_x < 0)
        sprite_index = walk_west_sprite;
    
    if (_chaser_y > 0)
        sprite_index = walk_south_sprite;
    
    if (_chaser_y < 0)
        sprite_index = walk_north_sprite;
    
    chaser_direction = point_direction(0, 0, _chaser_x, _chaser_y);
}
else {
    if (sprite_index == walk_east_sprite)
        sprite_index = stand_east_sprite;
    
    if (sprite_index == walk_west_sprite)
        sprite_index = stand_west_sprite;
    
    if (sprite_index == walk_south_sprite)
        sprite_index = stand_south_sprite;
    
    if (sprite_index == walk_north_sprite)
        sprite_index = stand_north_sprite;
}