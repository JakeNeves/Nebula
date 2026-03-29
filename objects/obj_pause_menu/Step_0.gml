var _key_up = keyboard_check_pressed(ord("W"));
var _key_down = keyboard_check_pressed(ord("S"));

var _key_action = keyboard_check_pressed(vk_space);

/// Controller Support Stuff!
var _gamepad = global.main_gamepad;
if (_gamepad != undefined) {
    _key_up = real(gamepad_button_check(_gamepad, gp_padu));
    _key_down = real(gamepad_button_check(_gamepad, gp_padd));
    
    _key_action = real(gamepad_button_check(_gamepad, gp_face1));
}

op_length = array_length(option[menu_id]);

if (!is_keyboard_used_debug_overlay())
	pos += _key_down - _key_up;

if (pos >= op_length)
	pos = 0;
	
if (pos < 0)
	pos = op_length - 1;

if (global.music_volume == 1)
    option[1, 1] = "Music: ON";
else
    option[1, 1] = "Music: OFF";

if (global.blood_and_gore == 1)
    option[1, 2] = "Blood and Gore: ON";
else
    option[1, 2] = "Blood and Gore: OFF";

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
                window_set_fullscreen(!window_get_fullscreen());
				break;
	
			case 1:
                if (global.music_volume == 1)
                    global.music_volume = 0;
                else
                    global.music_volume = 1;
				break;
	
			case 2:
                if (global.blood_and_gore == 1)
                    global.blood_and_gore = 0;
                else
                    global.blood_and_gore = 1;
				break;
            
			case 3:
                save_settings();
				menu_id = 0;
				break;
			}
			break
	}
	
	if (_start_menu_id != menu_id)
		pos = 0;
		
	op_length = array_length(option[menu_id]);
	
}