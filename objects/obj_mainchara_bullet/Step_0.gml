speed = 10;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_enemy) || place_meeting(x, y, [layer_tilemap_get_id("Collidable"), obj_collidable])) {
    instance_create_depth(x, y, depth, obj_effect_bullet_hit)
    instance_destroy();
}