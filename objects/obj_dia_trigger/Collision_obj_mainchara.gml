if (instance_exists(obj_textbox))
    exit;

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 6) {
    create_dialogue(dialogue);
        
    instance_destroy();
    
    if (transition_player_to_next_room)
    {
        if (room_id <= 0)
        {
            show_debug_message("ROOM ID ERROR >> Room ID must be greater than 0!");
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