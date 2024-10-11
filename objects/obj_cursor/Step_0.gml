var _pos_x_vel = keyboard_check(ord("D"));
var _pos_y_vel = keyboard_check(ord("W"));
var _neg_x_vel = keyboard_check(ord("A"));
var _neg_y_vel = keyboard_check(ord("S"));

plr_x = (_pos_x_vel - _neg_x_vel) * plr_vel;
plr_y = (_neg_y_vel - _pos_y_vel) * plr_vel;

if (instance_exists(obj_pause_manager) || is_keyboard_used_debug_overlay()) {
	plr_x = 0;
	plr_y = 0;
}

x += plr_x;
y += plr_y;

if (plr_x == 0 && plr_y == 0)
	image_index = 0;

depth = -bbox_bottom;