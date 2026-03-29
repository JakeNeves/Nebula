speed = proj_speed;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_mainchara) || place_meeting(x, y, [layer_tilemap_get_id("Collidable"), obj_collidable])) {
    if (explosion_sprite != noone)
        instance_create_depth(x, y, depth, explosion_sprite);
    instance_destroy();
}