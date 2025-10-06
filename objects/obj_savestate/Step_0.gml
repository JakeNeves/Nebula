if (instance_exists(obj_textbox))
    exit;

var _gamepad = global.main_gamepad;

var _key_interact = real(keyboard_check_pressed(ord("F")));

if (_gamepad != undefined)
    _key_interact = real(gamepad_button_check_pressed(_gamepad, gp_face4));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 6) {
    can_interact = true;
    
    if (_key_interact > 0)
    {
        audio_play_sound(snd_save, 8, false);
        save_game(global.game_data_file);
        
        create_dialogue([ 
        { 
            dia_chara: "SYSTEM", 
            dia_sound: "system",
            dia_text: $"Progress has been saved!"
        }
        ])
    }
}
else {
    can_interact = false;
}