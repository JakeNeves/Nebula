is_paused = false;
layer_id = "Pause_Layer";

update_pause_menu = function() {
    if (room != rm_menu) {
        if (is_paused) {
            instance_deactivate_all(true);
            layer_set_visible(layer_id, true);
        }
        else {
            instance_activate_all();
            layer_set_visible(layer_id, false);
            layer_set_visible("Settings_Layer", false);
        }
    }
}

update_pause_menu();

layer_set_visible("Settings_Layer", false);