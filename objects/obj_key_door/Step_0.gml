if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 6) {
    
    if (_key_interact > 0)
    {
        if (obj_mainchara.keys > 0) {
            audio_play_sound(snd_door_unlock, 8, false);
            obj_mainchara.remove_keys(1);
            instance_destroy();
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