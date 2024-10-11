if (place_meeting(x, y, obj_mainchara) && !instance_exists(obj_trans_anim)) {
	var _inst = instance_create_depth(0, 0, -999, obj_trans_anim);
	
	_inst.target_x = target_x;
	_inst.target_y = target_y;
	
	_inst.target_room = target_room;
	
	_inst.target_direction = target_direction;
}