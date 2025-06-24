function draw_shadow(_off = 0) {
    draw_sprite_ext(spr_shadow, 0, x, y + _off, 1, 1, 0, -1, 0.5);
}