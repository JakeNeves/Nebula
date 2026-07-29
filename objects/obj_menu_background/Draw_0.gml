if (current_month >= 9 && current_month < 12) {
    sprite_index = spr_menu_background_autum;
    layer_set_visible("Snowfall", false);
}
else if (current_month == 12 || (current_month >= 1 && current_month < 3)) {
    sprite_index = spr_menu_background_winter;
    layer_set_visible("Snowfall", true);
}
else {
    sprite_index = spr_menu_background;
    layer_set_visible("Snowfall", false);
}
    

if (current_hour > 21 || current_hour < 5)
    image_index = 1;
else
    image_index = 0;