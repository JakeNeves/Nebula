depth = -bbox_bottom;

speed = 8;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_collidable) || pierce_count <= 0) {
    instance_create_depth(x, y, depth, obj_effect_bullet_hit);
    instance_destroy();
}

if (place_meeting(x, y, obj_enemy))
    pierce_count--;