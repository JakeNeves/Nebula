audio_play_sound(snd_select, 0, false);

switch (btn_id) {
    case 0:
        obj_pause_manager.is_paused = false;
        obj_pause_manager.update_pause_menu();
        break;
    case 1:
        layer_set_visible("Pause_Layer", false);
        layer_set_visible("Settings_layer", true);
        break;
    case 2:
        room_goto(rm_menu);
        break;
    case 3:
        layer_set_visible("Pause_Layer", true);
        layer_set_visible("Settings_layer", false);
        break;
}