depth = -bbox_bottom;

time_left--;

if (obj_mainchara.is_shooting) {
    image_index = 1;
    speed = 0;
}
else {
    image_index = 0;
    speed = 8;
}


if (time_left <= 0 || place_meeting(x, y, obj_enemy) || place_meeting(x, y, obj_collidable)) {
    instance_create_depth(x, y, depth, obj_effect_bullet_hit);
    instance_destroy();
}