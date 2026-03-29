speed = 8;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_collidable)) {
    instance_create_depth(x, y, depth, obj_effect_bullet_hit);
    instance_destroy();
}