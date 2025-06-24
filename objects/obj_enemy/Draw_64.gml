/// @desc This is used to create a bossbar that appears on the screen with flavour text and the name of the boss, this can also be used when making minibosses.
var _dx = 16;
var _dy = guiy * 0.8;
var _barx = 760;
var _bary = 32;

draw_set_font(global.main_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (boss && !miniboss && instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 400) {
    var _hp = _barx * (hp / hp_max);
    draw_sprite_stretched(spr_bossbar_base, 0, _dx, _dy, _barx, _bary);
    draw_sprite_stretched_ext(spr_bossbar_fill, 0, _dx, _dy, _hp, _bary, c_white, 0.6);
    
    if (flavor_text != noone)
        draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2 - 48, flavor_text, 2, 2, 0);
    
    if (boss_name != noone)
        draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2 - 28, boss_name, 3, 3, 0);
    
    draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2, $"{hp}/{hp_max}", 2, 2, 0);
}

if (miniboss && !boss && instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < 400) {
    var _hp = _barx * (hp / hp_max);
    draw_sprite_stretched(spr_minibossbar_base, 0, _dx, _dy, _barx, _bary);
    draw_sprite_stretched_ext(spr_minibossbar_fill, 0, _dx, _dy, _hp, _bary, c_white, 0.6);
    
    if (boss_name != noone)
        draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2 - 28, boss_name, 3, 3, 0);
    
    draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2, $"{hp}/{hp_max}", 2, 2, 0);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);