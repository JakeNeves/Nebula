if (instance_exists(obj_textbox))
    exit;

var _key_interact = real(keyboard_check_pressed(ord("E")));

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 12) {
    can_interact = true;
    
    if (_key_interact > 0)
    {
        create_dialogue([ 
        { 
            dia_chara: "interact", 
            dia_sound: "system",
            dia_text: $"It's written in some near-indecipherable text,\nyou have no idea what it says..."
        }
        ])
    }
}
else {
    can_interact = false;
}
