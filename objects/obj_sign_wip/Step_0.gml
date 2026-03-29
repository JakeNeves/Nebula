if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 12) {
    can_interact = true;
    
    if (_key_interact > 0)
    {
        create_dialogue([ 
        { 
            dia_chara: "SYSTEM", 
            dia_sound: "system",
            dia_text: $"This area is not accessable right now,\ncheck back sometime in the future!"
        }
        ])
    }
}
else {
    can_interact = false;
}