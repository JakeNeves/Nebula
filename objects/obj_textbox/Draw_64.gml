var _dx = 0;
var _dy = guiy * 0.8;
var _tboxx = guix;
var _tboxy = guix - _dy;

draw_sprite_stretched(spr_tbox, 0, _dx, _dy, _tboxx, _tboxy);

_dx += 16;
_dy += 16;

draw_set_font(global.main_font);

var _name = dialogue[cur_dia].dia_chara;

if (_name != noone)
    draw_set_color(global.chara_color[$ _name]);

draw_text_transformed(_dx, _dy, _name, 2, 2, 0);
draw_set_color(c_white);

_dy += 16;
draw_text_ext_transformed(_dx, _dy, draw_dialogue, -1, _tboxx - _dx * 2, 2, 2, 0);