depth = -bbox_bottom;

time_left--;

if (time_left < 250) {
    speed = 8;
    image_index = 1;
}
else {
    speed = 2;
    image_index = 0;
}

if (time_left <= 0 || place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_collidable)) {
    instance_create_depth(x, y, depth, obj_effect_bullet_hit);
    instance_destroy();
}