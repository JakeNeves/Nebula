var _new_width = 0;

for (var _i = 0; _i < op_length; _i++) {
	var _op_width = string_width(option[menu_id, _i]);
	_new_width = max(_new_width, _op_width);
}

width = _new_width + op_border * 2;
height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;

draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

draw_set_font(global.main_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var _i = 0; _i < op_length; _i++) {
	var _col = c_white;
	
	if (pos == _i)
		_col = c_aqua;
	
	draw_text_color(x + op_border, y + op_border + op_space * _i, option[menu_id, _i], _col, _col, _col, _col, 1);
}