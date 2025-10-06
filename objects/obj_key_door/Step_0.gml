if (instance_exists(obj_textbox))
    exit;

var _gamepad = global.main_gamepad;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (_gamepad != undefined)
    _key_interact = real(gamepad_button_check_pressed(_gamepad, gp_face4));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 6) {
    
    if (_key_interact > 0 && image_index == 0)
    {
        if (obj_mainchara.keys > 0) {
            audio_play_sound(snd_door_unlock, 8, false);
            obj_mainchara.remove_keys(1);
            instance_destroy();
            image_index = 1;
        }
        else {
            audio_play_sound(snd_door_attempt_open, 8, false);
        
            create_dialogue([{
                dia_chara: "interact",
                dia_sound: "system",
                dia_text: "It's locked, looks like you need to find a key to open it..."
            }])
        }
    }
}