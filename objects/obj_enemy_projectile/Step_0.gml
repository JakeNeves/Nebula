speed = proj_speed;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_enemy) || place_meeting(x, y, [layer_tilemap_get_id("Collidable"), obj_collidable])) {
    instance_destroy();
}