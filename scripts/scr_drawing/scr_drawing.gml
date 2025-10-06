function draw_shadow(_off = 0) {
    draw_sprite_ext(spr_shadow, 0, x, y + _off, 1, 1, 0, -1, 0.5);
}

function draw_set(_col = c_white, _alpha = 1) {
    draw_set_color(_col);
    draw_set_alpha(_alpha);
}

function draw_reset() {
    draw_set(c_white, 1);
}