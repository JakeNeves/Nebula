function set_grounded(_value = true) {
	if (_value) {
		ground = true;
	
		hang = hang_frame;
	}
	else {
		ground = false;
		
		hang = 0;
	}
}

setup_inputs();

plr_mask = spr_mainchara_plat;

plr_sprite_idle = spr_mainchara_plat;
plr_sprite_move = spr_mainchara_plat_move;
plr_sprite_run = spr_mainchara_plat_run;
plr_sprite_jump = spr_mainchara_plat_jump;
plr_sprite_fall = spr_mainchara_plat_fall;

move_dir = 0;

plr_face_dir = 1;

plr_sprint_type = 0;

plr_plat_vel[0] = 2;
plr_plat_vel[1] = 4;
plr_x_plat = 0;
plr_y_plat = 0;

plr_grav = 0.250;
plr_grav_max = 8.93;
plr_jump_vel = -3.5;

plr_jump_max = 2;
plr_jump_conut = 0;
plr_jump_hold = 0;
plr_jump_hold_frame = 16;

ground = false;

hang_frame = 2;
hang = 0;

jump_frame = 6;
jump = 0;