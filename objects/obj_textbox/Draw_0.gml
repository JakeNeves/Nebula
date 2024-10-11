var _key_action = keyboard_check_pressed(vk_space);

var _tbox_x = camera_get_view_x(view_camera[0]);
var _tbox_y = camera_get_view_y(view_camera[0]) + 207;

if (!setup) {
	setup = true;
	
	draw_set_font(global.main_font);
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	for (var _i = 0; _i < dia_page_num; _i++) {
		text_length[_i] = string_length(text[_i]);
		
		text_x_offset[_i] = 80;
		port_x_off[_i] = 8;
		
		if (dia_chara_port_side[_i] == -1) {
			text_x_offset[_i] = 8;
			port_x_off[_i] = 216;
		}
		
		if (dia_chara_port[_i] == noone)
			text_x_offset[_i] = 44;
		
		for (var _j = 0; _j < text_length[_i]; _j++) {
			var _chara_pos = _j + 1;
			
			chara[_j, _i] = string_char_at(text[_i], _chara_pos);
			
			var _text_until_chara = string_copy(text[_i], 1, _chara_pos);
			
			var _cur_text_width = string_width(_text_until_chara) - string_width(chara[_j, _i]);
			
			if (chara[_j, _i] == " ")
				last_free = _chara_pos + 1;
				
			if (_cur_text_width - line_break_off[_i] > line_width) {
				line_break_pos[line_break_num[_i], _i] = last_free;
				line_break_num[_i]++;
				
				var _text_until_last_space = string_copy(text[_i], 1, last_free);
				var _last_free_str = string_char_at(text[_i], last_free);
				
				line_break_off[_i] = string_width(_text_until_last_space) - string_width(_last_free_str);
			}
		}
		
		for (var _j = 0; _j < text_length[_i]; _j++) {
			var _chara_pos = _j + 1;
			
			var _text_x = _tbox_x + text_x_offset[_i] + tbox_border;
			var _text_y = _tbox_y + tbox_border;
			
			var _text_until_chara = string_copy(text[_i], 1, _chara_pos);
			
			var _cur_text_width = string_width(_text_until_chara) - string_width(chara[_j, _i]);
			
			var _text_line = 0;
			
			for (var _k = 0; _k < line_break_num[_i]; _k++;) {
				if (_chara_pos >= line_break_pos[_k, _i]) {
					var _str_cop = string_copy(text[_i], line_break_pos[_k, _i], _chara_pos - line_break_pos[_k, _i]);
					_cur_text_width = string_width(_str_cop);
					
					_text_line = _k + 1;
				}
			}
			
			chara_x[_j, _i] = _text_x + _cur_text_width;
			chara_y[_j, _i] = _text_y + _text_line * line_separation;
		}
	}
}

if (text_pause <= 0) {
	if (draw_char < text_length[dia_page]) {
		draw_char += text_speed;
		draw_char = clamp(draw_char, 0, text_length[dia_page]);
	
		var _check_char = string_char_at(text[dia_page], draw_char);
	
		if (_check_char == "." || _check_char == "?" || _check_char == ",") {
			text_pause = text_time;
		}
		else {
			if (sound_count < sound_delay)
				sound_count++;
			else {
				sound_count = 0;
				audio_play_sound(dia_chara_sound[dia_page], 8, false);
			}
		}
	}
}
else {
	text_pause--;
}
if (_key_action) {
	audio_play_sound(snd_dialogue_advance, 8, false);
	
	if (draw_char == text_length[dia_page]) {
		if (dia_page < dia_page_num - 1) {
			dia_page++;
			draw_char = 0;
		}
		else {
			if (option_num > 0) {
				create_tbox(option_link_id[option_pos]);
			}
			
			instance_destroy();
		}
	}
	else
		draw_char = text_length[dia_page];
}

var _tbx_x = _tbox_x + text_x_offset[dia_page];
var _tbx_y = _tbox_y;

tbox_image += tbox_image_speed;

var _tbox_texture_width = sprite_get_width(tbox_texture[dia_page]);
var _tbox_texture_height = sprite_get_height(tbox_texture[dia_page]);

if (dia_chara_port[dia_page] != noone) {
	sprite_index = dia_chara_port[dia_page];
	
	if (draw_char == text_length[dia_page])
		image_index = 0;
	
	var _chara_port_x = _tbox_x + port_x_off[dia_page];
	
	if (dia_chara_port_side[dia_page] == -1)
		_chara_port_x += sprite_width;
		
	draw_sprite_ext(tbox_texture[dia_page], tbox_image, _tbox_x + port_x_off[dia_page], _tbox_y, (sprite_width / _tbox_texture_width) + 0.1, (sprite_height / _tbox_texture_height) + 0.1, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _chara_port_x, _tbox_y, dia_chara_port_side[dia_page], 1, 0, c_white, 1);
}

draw_sprite_ext(tbox_texture[dia_page], tbox_image, _tbox_x + text_x_offset[dia_page], _tbox_y, tbox_width / _tbox_texture_width, tbox_height / _tbox_texture_height, 0, c_white, 1);

if (draw_char == text_length[dia_page] && dia_page == dia_page_num - 1) {
	option_pos += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"))
	option_pos = clamp(option_pos, 0, option_num - 1);
	
	var _op_space = 15;
	var _op_border = 4;
	
	for (var _i = 0; _i < option_num; _i++) {
		var _op_width = string_width(option[_i]) + _op_border * 2;
		
		draw_sprite_ext(tbox_texture[dia_page], tbox_image, _tbx_x + 16, _tbx_y - _op_space * option_num + _op_space * _i, _op_width / _tbox_texture_width, (_op_space - 1) / _tbox_texture_height, 0, c_white, 1);
		
		if (option_pos == _i) {
			draw_sprite(spr_dialogue_select, 0, _tbx_x, _tbx_y - _op_space * option_num + _op_space * _i);
		}
		
		draw_text(_tbx_x + 16 + _op_border, _tbx_y - _op_space * option_num + _op_space * _i + 2, option[_i]);
	}
}

for (var _i = 0; _i < draw_char; _i++;) {
	var _float_y = 0;
	
	if (float_text[_i, dia_page]) {
		float_direction[_i, dia_page] += -8;
		
		_float_y = dsin(float_direction[_i, dia_page]);
	}
	
	var _shake_x = 0;
	var _shake_y = 0;
	
	if (shake_text[_i, dia_page]) {
		shake_time[_i, dia_page]--;
		
		if (shake_time[_i, dia_page] <= 0) {
			shake_time[_i, dia_page] = irandom_range(8, 12);
			shake_direction[_i, dia_page] = irandom(360);
		}
		
		if (shake_time[_i, dia_page] <= 2) {
			_shake_x = lengthdir_x(1, shake_direction[_i, dia_page]);
			_shake_y = lengthdir_y(1, shake_direction[_i, dia_page]);
		}
	}
	
	draw_text_color(chara_x[_i, dia_page] + _shake_x, chara_y[_i, dia_page] + _shake_y + _float_y, chara[_i, dia_page], color_1[_i, dia_page], color_1[_i, dia_page], color_1[_i, dia_page], color_1[_i, dia_page], 1);
}