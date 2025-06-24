event_inherited();

if (chaser_x != 0 || chaser_y != 0) {
    if (chaser_x > 0)
        sprite_index = spr_sylux_walk_east;
    if (chaser_x < 0)
        sprite_index = spr_sylux_walk_west;
    if (chaser_y > 0)
        sprite_index = spr_sylux_walk_south;
    if (chaser_y < 0)
        sprite_index = spr_sylux_walk_north;
}
else {
    if (sprite_index == spr_sylux_walk_east)
        sprite_index = spr_sylux_stand_east;
    if (sprite_index == spr_sylux_walk_west)
        sprite_index = spr_sylux_stand_west;
    if (sprite_index == spr_sylux_walk_south)
        sprite_index = spr_sylux_stand_south;
    if (sprite_index == spr_sylux_walk_north)
        sprite_index = spr_sylux_stand_north;
}