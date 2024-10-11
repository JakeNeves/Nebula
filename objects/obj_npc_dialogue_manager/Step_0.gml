if (keyboard_check_pressed(ord("C")) && distance_to_object(obj_mainchara) < 10 && !instance_exists(obj_textbox)) {	
	create_tbox(dialogue_id);
}