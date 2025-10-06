draw_self();

if (distance_to_object(obj_mainchara) < 6 && !instance_exists(obj_textbox) && image_index == 0) {
    draw_sprite(spr_dialogue_indicator, 0, x, y - 4);
}