gpu_set_blendenable(false);

if (pause) {
	surface_set_target(application_surface);
	if (surface_exists(pause_surf))
		draw_surface(pause_surf, 0, 0);
	else {
		pause_surf = surface_create(res_x, res_y);
		buffer_set_surface(pause_surf_buff, pause_surf, 0);
	}
	surface_reset_target();
}

if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		pause = true;
		
		instance_deactivate_all(true);
		instance_create_depth(x, y, -999, obj_pause_menu);
		
		pause_surf = surface_create(res_x, res_y);
		surface_set_target(pause_surf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		if (buffer_exists(pause_surf_buff))
			buffer_delete(pause_surf_buff);
		
		pause_surf_buff = buffer_create(res_x * res_y * 4, buffer_fixed, 1);
		buffer_get_surface(pause_surf_buff, pause_surf, 0);
	}
	else {
		pause = false;
		
		instance_activate_all();
		instance_destroy(obj_pause_menu);
		
		if (surface_exists(pause_surf))
			surface_free(pause_surf);
		
		if (buffer_exists(pause_surf_buff))
			buffer_delete(pause_surf_buff);
	}
}

gpu_set_blendenable(true);