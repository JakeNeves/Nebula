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
        create_dialogue(dialogue);
        
        if (transition_player_to_next_room)
        {
            if (room_id <= 0)
            {
                show_debug_message("ROOM ID ERROR >> Room ID must be greater than 0!")
                transition_player_to_next_room = false;
            }
            else
                obj_textbox.can_goto_next_room = true;
        }
    
        if (execute_event)
        {
            if (event_id == noone)
                show_debug_message("EVENT ID ERROR >> Check Event ID or execute an existing event!");
            else
                script_execute(event_id);
        }
    }
}
else {
    can_interact = false;
}