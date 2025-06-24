if (instance_exists(obj_textbox))
    exit;

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 6) {
    can_interact = true;
    
    if (keyboard_check_pressed(key_interact) || gamepad_button_check_pressed(0, btn_interact))
    {
        audio_play_sound(snd_save, 8, false);
        save_game(global.game_data_file);
        
        create_dialogue([ 
        { 
            chara: "SYSTEM", 
            dia_text: $"Progress has been saved!"
        }
        ])
    }
}
else {
    can_interact = false;
}