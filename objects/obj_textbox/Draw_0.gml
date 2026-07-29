var _key_next = real(keyboard_check_pressed(vk_space));

tbox_x = camera_get_view_x(view_camera[0]) - 16;
tbox_y = camera_get_view_y(view_camera[0]) + 160;

/// Controller Support Stuff!
var _gamepad = global.main_gamepad;
if (_gamepad != undefined)
    _key_next = real(gamepad_button_check(_gamepad, gp_face1));

/// Setup
if (!setup) {
    setup = true;
    
    draw_set_font(global.main_font);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    
    for (var _i = 0; _i < page_num; _i++) {
        text_length[_i] = string_length(text[_i]);
        
        tbox_x_offset[_i] = 128;
        port_x_offset[_i] = 80;
        
        if (port_side[_i] == -1) {
            tbox_x_offset[_i] = 96;
            port_x_offset[_i] = 288; 
        }
        
        if (port_spr[_i] == noone) {
            tbox_x_offset[_i] = 80;
        }
        
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
        
        for (var _j = 0; _j < text_length[_i]; _j++;) {
            var _chara_pos = _j + 1;
            var _text_x = tbox_x + tbox_x_offset[_i] + border;
            var _text_y = tbox_y + border;
            
            var _text_up_to_char = string_copy(text[_i], 1, _chara_pos);
            var _cur_text_width = string_width(_text_up_to_char) - string_width(chara[_j, _i]);
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

/// Drawing the characters
if (text_pause_timer <= 0) {
    if (draw_chara < text_length[page]) {
        draw_chara += text_speed;
        draw_chara = clamp(draw_chara, 0, text_length[page]);
    
        var _check_chara = string_char_at(text[page], draw_chara);
        if (_check_chara == "." ||
            _check_chara == "," ||
            _check_chara == "?") {
            text_pause_timer = text_pause_time;
        }
        else {
            if (voice_count < voice_delay) {
                voice_count++;
            }
            else {
                voice_count = 0;
                audio_play_sound(voice[page], 8, false);
            }
        }
    }
}
else
    text_pause_timer--;

/// Advancing to the next pages
if (_key_next) {
    audio_play_sound(snd_dialogue_advance, 8, false);
    
    if (draw_chara == text_length[page]) {
        if (page < page_num - 1) {
            page++;
            draw_chara = 0;
        }
        else {
            if (option_num > 0)
                create_dialogue_from_id(option_link_id[option_pos]);
            
            instance_destroy();
        }
    }
    else
        draw_chara = text_length[page];
}

/// Drawing the text
var _tbox_x = tbox_x + tbox_x_offset[page];
var _tbox_y = tbox_y;
tbox_img += tbox_img_speed;
tbox_spr_width = sprite_get_width(tbox_spr[page]);
tbox_spr_height = sprite_get_height(tbox_spr[page]);

if (port_spr[page] != noone) {
    sprite_index = port_spr[page];
    
    var _port_x = tbox_x + port_x_offset[page];
    
    if (draw_chara == text_length[page])
        image_index = 0;
    
    if (port_side[page] == -1)
        _port_x += sprite_width;
    
    draw_sprite_ext(tbox_spr[page], tbox_img, _tbox_x + port_x_offset[page], tbox_y, (sprite_width / tbox_spr_width) + 0.1, (sprite_height / tbox_spr_height) + 0.1, 0, c_white, 0.75);
    draw_sprite_ext(sprite_index, image_index, _port_x, tbox_y, port_side[page], 1, 0, c_white, 1);
}

draw_sprite_ext(tbox_spr[page], tbox_img, _tbox_x, _tbox_y, tbox_width / tbox_spr_width, tbox_height / tbox_spr_height, 0, c_white, 0.75);

/// The Dialogue Options
if (draw_chara == text_length[page] && page == page_num - 1) {
    option_pos += real(keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W")));

    /// Controller Support Stuff!
    if (_gamepad != undefined)
        option_pos += real(gamepad_button_check_pressed(_gamepad, gp_padd) - gamepad_button_check_pressed(_gamepad, gp_padu));
    
    option_pos = clamp(option_pos, 0, option_num - 1);
    
    var _option_space = 16;
    var _option_border = 4;
    
    for (var _i = 0; _i < option_num; _i++;) {
        var _option_width = string_width(option[_i]) + _option_border * 2;
        
        draw_sprite_ext(tbox_spr[page], tbox_img, _tbox_x + 16, _tbox_y - _option_space * option_num + _option_space * _i, _option_width / tbox_spr_width, (_option_space - 1) / tbox_spr_height, 0, c_white, 0.75);
        
        if (option_pos == _i)
            draw_sprite(spr_dialogue_select, cursor_img_speed, _tbox_x, _tbox_y - _option_space * option_num + _option_space * _i)
        
        draw_text(_tbox_x + 16 + _option_border, _tbox_y - _option_space * option_num + _option_space * _i + 2, option[_i]);
    }
}

for (var _i = 0; _i < draw_chara; _i++) {
    var _float_y = 0;
    
    if (float_text[_i, page] == 1) {
        float_dir[_i, page] += -5;
        
        _float_y = dsin(float_dir[_i, page]);
    }
    
    var _shake_x = 0;
    var _shake_y = 0;
    
    if (shake_text[_i, page]) {
        shake_intensity[_i, page]--;
        
        if (shake_intensity[_i, page] <= 0) {
            shake_intensity[_i, page] = irandom_range(4, 8);
            shake_dir[_i, page] = irandom(360);
        }
        
        if (shake_intensity[_i, page] <= 2) {
            _shake_x = lengthdir_x(1, shake_dir[_i, page]);
            _shake_y = lengthdir_y(1, shake_dir[_i, page]);
        }
    }
    
    draw_text_color(chara_x[_i, page] + _shake_x, chara_y[_i, page] + _float_y + _shake_y, chara[_i, page], col_1[_i, page], col_2[_i, page], col_3[_i, page], col_4[_i, page], 1);
}