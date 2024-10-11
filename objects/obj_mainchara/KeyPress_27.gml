if (!instance_exists(obj_pause_menu)) {
	instance_create_depth(x, y, -999, obj_pause_menu);
}
else {
	instance_destroy(obj_pause_menu);
}