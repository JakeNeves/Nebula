var _dx = 16;
var _dy = 16;
var _barx = 256;
var _bary = 32;

draw_set_font(global.main_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _hp = _barx * (plr_hp / plr_hp_max);
draw_sprite_stretched(spr_hp_base, 0, _dx, _dy, _barx, _bary);
draw_sprite_stretched_ext(spr_hp_fill, 0, _dx, _dy, _hp, _bary, c_white, 0.6);
draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2, $"HP: {plr_hp}/{plr_hp_max}", 2, 2, 0);

var _xp = _barx * (xp / xp_req);
_dy += _bary + 8;
draw_sprite_stretched(spr_xp_base, 0, _dx, _dy, _barx, _bary);
draw_sprite_stretched_ext(spr_xp_fill, 0, _dx, _dy, _xp, _bary, c_white, 0.6);
draw_text_transformed(_dx + _barx / 2, _dy + _bary / 2, $"XP: {xp}/{xp_req} | LV: {lv}", 2, 2, 0);

var _money = _barx * (money);
_dy += _bary + 12;
draw_sprite_stretched(spr_money_base, 0, _dx, _dy, _barx / 2, _bary);
draw_text_transformed(_dx + _barx / 3, _dy + _bary / 2.5, $"{money}", 2, 2, 0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);