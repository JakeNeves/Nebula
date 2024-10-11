function setup_inputs() {
	buff_time = 3;
	
	key_jump_buff = 0;
	key_jump_buff_time = 0;
}

function get_inputs() {
	pos_vel = keyboard_check(ord("D")) + gamepad_button_check(0, gp_padr);
	pos_vel = clamp(pos_vel, 0, 1);
	
	neg_vel = keyboard_check(ord("A")) + gamepad_button_check(0, gp_padl);
	neg_vel = clamp(neg_vel, 0, 1);

	key_jump_press = keyboard_check_pressed(vk_space) + gamepad_button_check_pressed(0, gp_face1);
	key_jump_press = clamp(key_jump_press, 0, 1);
	
	key_jump = keyboard_check(vk_space) + gamepad_button_check(0, gp_face1);
	key_jump = clamp(key_jump, 0, 1);
	
	key_sprint = keyboard_check(vk_shift) + gamepad_button_check(0, gp_face3);
	key_sprint = clamp(key_sprint, 0, 1);
	
	if (key_jump_press) {
		key_jump_buff_time = buff_time;
	}
	
	if (key_jump_buff_time > 0) {
		key_jump_buff = 1;
		
		key_jump_buff_time--;
	}
	else {
		key_jump_buff = 0;
	}
}