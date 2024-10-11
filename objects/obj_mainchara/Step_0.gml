var _pos_x_vel = keyboard_check(ord("D"));
var _pos_y_vel = keyboard_check(ord("W"));
var _neg_x_vel = keyboard_check(ord("A"));
var _neg_y_vel = keyboard_check(ord("S"));

plr_x = (_pos_x_vel - _neg_x_vel) * plr_vel;
plr_y = (_neg_y_vel - _pos_y_vel) * plr_vel;

if (keyboard_check(vk_shift))
	plr_vel = 4;
else
	plr_vel = 2;

if (instance_exists(obj_pause_manager) || is_keyboard_used_debug_overlay()) {
	plr_x = 0;
	plr_y = 0;
}

mask_index = sprite[SOUTH];

if (plr_y == 0) {
	if (plr_x > 0)
		face = EAST;
	if (plr_x < 0)
		face = WEST;
}

if (plr_x > 0 && face == WEST)
	face = EAST;
if (plr_x < 0 && face == EAST)
	face = WEST;

if (plr_x == 0) {
	if (plr_y > 0)
		face = SOUTH;
	if (plr_y < 0)
		face = NORTH;
}

if (plr_y > 0 && face == NORTH)
	face = SOUTH;
if (plr_y < 0 && face == SOUTH)
	face = NORTH;
	
if (face = EAST)
	image_xscale = 1;
if (face = WEST)
	image_xscale = -1;

sprite_index = sprite[face];

if (place_meeting(x + plr_x, y, obj_collidable) && !global.no_clip) {
	plr_x = 0;
}
if (place_meeting(x, y + plr_y, obj_collidable) && !global.no_clip) {
	plr_y = 0;
}

x += plr_x;
y += plr_y;

if (plr_x == 0 && plr_y == 0)
	image_index = 0;

depth = -bbox_bottom;