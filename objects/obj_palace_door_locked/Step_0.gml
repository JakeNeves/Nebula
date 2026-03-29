if (instance_exists(obj_textbox))
    exit;

var _gamepad = global.main_gamepad;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (_gamepad != undefined)
    _key_interact = real(gamepad_button_check_pressed(_gamepad, gp_face4));

if (place_meeting(x, y, obj_mainchara) && !instance_exists(obj_trans_anim) && _key_interact) {
	if (global.has_masters_key) {
		audio_play_sound(snd_trans_door, 8, false);
	
		var _inst = instance_create_depth(0, 0, -999, obj_trans_anim);
	
		_inst.target_x = target_x;
		_inst.target_y = target_y;
	
		_inst.target_room = target_room;
	
		_inst.target_direction = target_direction;
	}
	else {
        audio_play_sound(snd_door_attempt_open, 8, false);
        
        create_dialogue([{ 
            dia_chara: "interact", 
            dia_sound: "system", 
            dia_text: "It's locked..."
        }])
	}
}