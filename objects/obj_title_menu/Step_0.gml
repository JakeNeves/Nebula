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
    audio_play_sound(snd_select, 0, false);
	
	switch (menu_id) {
		#region Main Menu
		case 0:
			switch (pos) {
			case 0:
				menu_id = 3;
				break;
	
			case 1:
				menu_id = 2;
				break;
				
			case 2:
				menu_id = 1;
				break;
	
			case 3:
				break;
	
			case 4:
				game_end();
				break;
			}
			break;
		#endregion
		
		#region Options Menu
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
			break;
		#endregion
		
        #region Continue
		case 2:
			switch (pos) {
			case 0:
				global.game_data_file = 0;
                show_debug_message("File A - Loaded!")
				load_game(0);
				break;
	
			case 1:
				global.game_data_file = 1;
                show_debug_message("File B - Loaded!")
				load_game(1);
				break;
	
			case 2:
				global.game_data_file = 2;
                show_debug_message("File C - Loaded!")
				load_game(2);
				break;
	
			case 3:
				global.game_data_file = 3;
                show_debug_message("File D - Loaded!")
				load_game(3);
				break;
	
			case 4:
				menu_id = 0;
				break;
			}
			break;
		#endregion
        
        #region New Game
        case 3:
            switch (pos) {
                case 0:
                    global.game_data_file = 0;
                    menu_id = 4;
                break;
            
                case 1:
                    global.game_data_file = 1;
                    menu_id = 4;
                break;
            
                case 2:
                    global.game_data_file = 2;
                    menu_id = 4;
                break;
            
                case 3: 
                    global.game_data_file = 3;
                    menu_id = 4;
                break;
            
                case 4:
                    menu_id = 0;
                break;
        }
        break;
        #endregion
        
        #region Difficulty
        case 4:
            switch (pos) { 
            case 0: 
                global.difficulty = DIFFICULTY.EASY;
                show_debug_message("New game started on Easy mode!")
                room_goto(rm_fields_1)
                break;
                
            case 1:
                global.difficulty = DIFFICULTY.MEDIUM;
                show_debug_message("New game started on Medium mode!")
                room_goto(rm_fields_1)
                break;
                
            case 2:
                global.difficulty = DIFFICULTY.HARD;
                show_debug_message("New game started on Hard mode!")
                room_goto(rm_fields_1)
                break;
                
            case 3:
                global.difficulty = DIFFICULTY.INSANE;
                show_debug_message("New game started on Insane mode!")
                room_goto(rm_fields_1)
                break; 
                
            case 4:
                global.difficulty = DIFFICULTY.EXTREME;
                show_debug_message("New game started on Extreme mode!")
                room_goto(rm_fields_1)
                break;
                
            case 5:
                menu_id = 3;
                break;
        }
        break;
        #endregion
	}
	
	if (_start_menu_id != menu_id)
		pos = 0;
		
	op_length = array_length(option[menu_id]);
	
}