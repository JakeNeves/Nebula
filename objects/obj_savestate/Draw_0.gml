draw_shadow(8);

draw_self();

if (can_interact && !instance_exists(obj_textbox)) {
    draw_sprite(spr_dialogue_indicator, 0, x, y - 16);
}