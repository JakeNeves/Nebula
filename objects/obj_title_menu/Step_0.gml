var _key_up = real(keyboard_check_pressed(ord("W")));
var _key_down = real(keyboard_check_pressed(ord("S")));

var _key_action = real(keyboard_check_pressed(vk_space));

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
                room_goto(rm_tutorial);
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
			break;
		#endregion
		
        #region Continue
		case 2:
			switch (pos) {
			case 0:
                if (file_exists("game_savedata_0.txt")) {
                    global.game_data_file = 0;
                    show_debug_message("File A - Loaded!")
				    load_game(0);
                }
                else
                    option[2, 0] = "No Data";
				break;
	
			case 1:
                if (file_exists("game_savedata_1.txt")) {
                    global.game_data_file = 1;
                    show_debug_message("File B - Loaded!")
				    load_game(1);
                }
                else
                    option[2, 1] = "No Data";
				break;
	
			case 2:
                if (file_exists("game_savedata_2.txt")) {
                    global.game_data_file = 2;
                    show_debug_message("File C - Loaded!")
				    load_game(2);
                }
                else
                    option[2, 2] = "No Data";
				break;
	
			case 3:
                if (file_exists("game_savedata_3.txt")) {
                    global.game_data_file = 3;
                    show_debug_message("File D - Loaded!")
				    load_game(3);
                }
                else
                    option[2, 3] = "No Data";
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