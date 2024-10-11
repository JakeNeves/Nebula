if (place_meeting(x, y, obj_mainchara) && !instance_exists(obj_trans_anim) && keyboard_check_pressed(ord("C"))) {
	if (global.has_masters_key) {
		audio_play_sound(snd_trans_door, 8, false);
	
		var _inst = instance_create_depth(0, 0, -999, obj_trans_anim);
	
		_inst.target_x = target_x;
		_inst.target_y = target_y;
	
		_inst.target_room = target_room;
	
		_inst.target_direction = target_direction;
	}
	else {
		create_tbox("LockedDoor");
	}
}