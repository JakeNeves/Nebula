if (instance_exists(obj_textbox))
    exit;

if (alarm[1] >= 0) {
    target_x = x + knockback_x;
    target_y = y + knockback_y;
}

var _enemy_x = clamp(target_x - x, -1, 1);
var _enemy_y = clamp(target_y - y, -1, 1);

move_and_collide(_enemy_x * movement_speed, _enemy_y * movement_speed, [collidable_map, obj_enemy]);