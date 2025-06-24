if (instance_exists(obj_textbox))
    exit;

if (alarm[1] >= 0) {
    target_x = x;
    target_y = y;
}

chaser_x = clamp(target_x - x, -1, 1);
chaser_y = clamp(target_y - y, -1, 1);

move_and_collide(chaser_x * movement_speed, chaser_y * movement_speed, [collidable_map, obj_enemy]);

if (chaser_x != 0 || chaser_y != 0)
    chaser_direction = point_direction(0, 0, chaser_x, chaser_y);