if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 12) {
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