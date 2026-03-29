var _key_interact = real(keyboard_check_pressed(ord("E")));

if (!instance_exists(obj_trans_anim) && _key_interact && distance_to_object(obj_mainchara) < 16) {
	audio_play_sound(snd_trans_mines_elevator, 8, false);
	
	var _inst = instance_create_depth(0, 0, -999, obj_trans_anim);
	
	_inst.target_x = target_x;
	_inst.target_y = target_y;
	
	_inst.target_room = target_room;
	
	_inst.target_direction = target_direction;
}