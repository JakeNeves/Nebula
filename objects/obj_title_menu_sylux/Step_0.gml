var _key_up = keyboard_check_pressed(ord("W")) || gamepad_button_check(gamepad_get_device_count(), gp_padu);
var _key_down = keyboard_check_pressed(ord("S")) || gamepad_button_check(gamepad_get_device_count(), gp_padd);

var _key_action = keyboard_check_pressed(vk_space) || gamepad_button_check(gamepad_get_device_count(), gp_face1);

op_length = array_length(option[menu_id]);

if (!is_keyboard_used_debug_overlay())
	pos += _key_down - _key_up;

if (pos >= op_length)
	pos = 0;
	
if (pos < 0)
	pos = op_length - 1;
	
	
if (_key_action) {
	
	var _start_menu_id = menu_id;
	
	switch (menu_id) {
		case 0:
			switch (pos) {
			case 0:
				audio_play_sound(snd_select, 0, false);
				room_goto(rm_test1);
				break;
	
			case 1:
				audio_play_sound(snd_select, 0, false);
				menu_id = 1;
				break;
	
			case 2:
				audio_play_sound(snd_select, 0, false);
				break;
	
			case 3:
				audio_play_sound(snd_select, 0, false);
				room_goto(rm_menu);
				break
	
			case 4:
				audio_play_sound(snd_select, 0, false);
				game_end();
				break;
			}
			break;
			
		case 1:
			switch (pos) {
			case 0:
				audio_play_sound(snd_select, 0, false);
				break;
	
			case 1:
				audio_play_sound(snd_select, 0, false);
				break;
	
			case 2:
				audio_play_sound(snd_select, 0, false);
				break;
	
			case 3:
				audio_play_sound(snd_select, 0, false);
				if (!global.is_debug_mode_enabled) {
					global.is_debug_mode_enabled = true;
					show_debug_log(true);
				} else {
					global.is_debug_mode_enabled = false;
					show_debug_log(false);
				}
				break;
				
			case 4:
				audio_play_sound(snd_select, 0, false);
				menu_id = 0;
				break;
			}
			break
	}
	
	if (_start_menu_id != menu_id)
		pos = 0;
		
	op_length = array_length(option[menu_id]);
	
}