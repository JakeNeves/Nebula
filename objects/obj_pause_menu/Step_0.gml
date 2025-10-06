var _key_up = keyboard_check_pressed(ord("W"));
var _key_down = keyboard_check_pressed(ord("S"));

var _key_action = keyboard_check_pressed(vk_space);

var _gamepad = global.main_gamepad;

if (_gamepad != undefined) {
    _key_up = real(gamepad_button_check_pressed(_gamepad, gp_padu));
    _key_down = real(gamepad_button_check_pressed(_gamepad, gp_padd));

    _key_action = real(gamepad_button_check_pressed(_gamepad, gp_face1));
}

op_length = array_length(option[menu_id]);

if (!is_keyboard_used_debug_overlay())
	pos += _key_down - _key_up;

if (pos >= op_length)
	pos = 0;
	
if (pos < 0)
	pos = op_length - 1;
	
	
if (_key_action) {
	
	var _start_menu_id = menu_id;
    audio_play_sound(snd_select, 0, false);
	
	switch (menu_id) {
		case 0:
			switch (pos) {
			case 0:
				instance_destroy();
				break;
	
			case 1:
				menu_id = 1;
				break;
	
			case 2:
				break;
	
			case 3:
				instance_destroy();
				room_goto(rm_menu);
				break;
			}
			break;
			
		case 1:
			switch (pos) {
			case 0:
				break;
	
			case 1:
				break;
	
			case 2:
				break;
				
			case 3:
				menu_id = 0;
				break;
			}
			break
	}
	
	if (_start_menu_id != menu_id)
		pos = 0;
		
	op_length = array_length(option[menu_id]);
	
}