get_inputs();

#region Movement Control
var _subpx = 0.5;

move_dir = pos_vel - neg_vel;

if (move_dir != 0)
	plr_face_dir = move_dir;

plr_sprint_type = key_sprint;

plr_x_plat = move_dir * plr_plat_vel[plr_sprint_type];

if (place_meeting(x + plr_x_plat, y, obj_collidable)) {
	
	if (!place_meeting(x + plr_x_plat, y - abs(plr_y_plat) - 1 , obj_collidable)) {
		while (place_meeting(x + plr_x_plat, y, obj_collidable))
			y -= _subpx;
	}
	else {
		if (!place_meeting(x + plr_x_plat, y + abs(plr_y_plat * 2) + 1, obj_collidable)) {
			while (place_meeting( x + plr_x_plat, y, obj_collidable))
				y += _subpx;
		}
		else {
			var _check_px = _subpx * sign(plr_x_plat);
	
			while (!place_meeting(x + _check_px, y, obj_collidable)) {
				x += _check_px;
			}
	
			plr_x_plat = 0;
		}
	}
}

if (plr_y_plat >= 0 && !place_meeting(x + plr_x_plat, y + 1, obj_collidable) && place_meeting(x + plr_x_plat, y + abs(plr_y_plat) + 1 , obj_collidable)) {
	while (!place_meeting(x + plr_x_plat, y + _subpx, obj_collidable))
		y += _subpx;
}

x += plr_x_plat;

if (hang > 0) {
	hang--;
}
else {
	plr_y_plat += plr_grav;
	
	set_grounded(false);
}

if (plr_y_plat > plr_grav_max)
	plr_y_plat = plr_grav_max

if (ground) {
	plr_jump_conut = 0;
	
	jump = jump_frame;
}
else {
	jump--;
	if (plr_jump_conut == 0 && jump <= 0)
		plr_jump_conut = 1;
}

if (key_jump_buff && plr_jump_conut < plr_jump_max) {
	key_jump_buff = 0;
	key_jump_buff_time = 0;
	
	plr_jump_conut++;
	
	plr_jump_hold = plr_jump_hold_frame;
	
	set_grounded(false);
}

if (!key_jump) {
	plr_jump_hold = 0;
}

if (plr_jump_hold > 0) {
	plr_y_plat = plr_jump_vel;
	
	plr_jump_hold--;
}
	
if (plr_y_plat < 0 && place_meeting(x, y + plr_y_plat, obj_collidable)) {
	var _is_sliding_on_slope = false;
	
	if (move_dir == 0 && !place_meeting(x - abs(plr_y_plat) - 1, y + plr_y_plat, obj_collidable)) {
		while (place_meeting(x, y + plr_y_plat, obj_collidable))
			x -= 1;
			
		_is_sliding_on_slope = true;
	}
	
	if (move_dir == 0 && !place_meeting(x + abs(plr_y_plat) + 1, y + plr_y_plat, obj_wall)) {
		while (place_meeting(x, y + plr_y_plat, obj_collidable))
			x += 1;
			
		_is_sliding_on_slope = true;
	}
	
	if (!_is_sliding_on_slope) {
		var _check_px = _subpx * sign(plr_y_plat);
	
		while (!place_meeting(x, y + _check_px, obj_collidable))
			y += _check_px;
		
		if (plr_y_plat < 0)
		 	plr_jump_hold = 0;
		
		plr_y_plat = 0;
	}
}
	
if (plr_y_plat >= 0) {
	if (place_meeting(x, y + plr_y_plat, obj_collidable)) {
		var _check_px = _subpx * sign(plr_y_plat);
	
		while (!place_meeting(x, y + _check_px, obj_collidable))
			y += _check_px;
		
		plr_y_plat = 0;
	}

	if (place_meeting(x, y + 1, obj_collidable)) {
		set_grounded(true);
	}
}

y += plr_y_plat;
#endregion

#region Sprite Control
if (abs(plr_x_plat) > 0)
	sprite_index = plr_sprite_move;
	
if (abs(plr_x_plat) >= plr_plat_vel[1])
	sprite_index = plr_sprite_run;
	
if (plr_x_plat == 0)
	sprite_index = plr_sprite_idle;
	
if (!ground)
	sprite_index = plr_sprite_jump;
	
if (!ground && plr_y_plat >= 0.05)
	sprite_index = plr_sprite_fall;
	
mask_index = plr_mask;
#endregion