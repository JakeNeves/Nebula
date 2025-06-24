if (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)) {
    is_paused = !is_paused;
    
    update_pause_menu();
}