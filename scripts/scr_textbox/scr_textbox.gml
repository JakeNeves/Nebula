function set_textbox_defaults() {
	line_break_pos[0, dia_page_num] = 999;
	line_break_num[dia_page_num] = 0;
	line_break_off[dia_page_num] = 0;
	
	for (var _i = 0; _i < 500; _i++) {
		color_1[_i, dia_page_num] = c_white;
		color_2[_i, dia_page_num] = c_white;
		color_3[_i, dia_page_num] = c_white;
		color_4[_i, dia_page_num] = c_white;
		
		dia_speed[_i, dia_page_num] = 1;
		
		float_text[_i, dia_page_num] = 0;
		float_direction[_i, dia_page_num] = _i * 20;
		
		shake_text[_i, dia_page_num] = 0;
		shake_direction[_i, dia_page_num] = irandom(360);
		shake_time[_i, dia_page_num] = irandom(8);
	}
	
	tbox_texture[dia_page_num] = spr_textbox;
	dia_chara_port[dia_page_num] = noone;
	dia_chara_port_side[dia_page_num] = 1;
	
	dia_chara_sound[dia_page_num] = snd_dialogue;
}

function set_dialogue_speed(_first_chara, _last_chara, _speed) {
	for (var _i = _first_chara; _i <= _last_chara; _i++;) {
		dia_speed[_i, dia_page_num - 1] = _speed;
	}
}

/// @param _event
/// @description A little function for executing custom events.
function execute_dialogue_event(_event) {
	dia_page_num++;
}

/// @param _delay
/// @description A little function for delaying dialogue.
function set_dialogue_delay(_delay) {
	if (_delay > 0)
		_delay--;
	else
		dia_page_num++;
}

/// @param _first_chara
/// @param _last_chara
/// @param _color_1
/// @param _color_2
/// @param _color_3
/// @param _color_4
function set_dialogue_color(_first_chara, _last_chara, _color_1, _color_2, _color_3, _color_4) {
	for (var _i = _first_chara; _i <= _last_chara; _i++) {
		color_1[_i, dia_page_num - 1] = _color_1;
		color_2[_i, dia_page_num - 1] = _color_2;
		color_3[_i, dia_page_num - 1] = _color_3;
		color_4[_i, dia_page_num - 1] = _color_4;
	}
}

/// @param _first_chara
/// @param _last_chara
function set_dialogue_float(_first_chara, _last_chara) {
	for (var _i = _first_chara; _i <= _last_chara; _i++) {
		float_text[_i, dia_page_num - 1] = true;
	}
}

function set_dialogue_shake(_first_chara, _last_chara) {
	for (var _i = _first_chara; _i <= _last_chara; _i++) {
		shake_text[_i, dia_page_num - 1] = true;
	}
}

/// @param _dialogue_text
/// @param [_chara]
/// @param [_side]
function set_dialogue(_dialogue_text) {
	set_textbox_defaults();
	
	text[dia_page_num] = _dialogue_text;
	
	if (argument_count > 1) {
		switch (argument[1]) {
			#region Emperor Jake dialogue portraits
			case "Jake":
				dia_chara_port[dia_page_num] = spr_dia_jake;
				dia_chara_sound[dia_page_num] = snd_dia_jake;
				break;
			case "Jake-audio":
				dia_chara_sound[dia_page_num] = snd_dia_jake;
				break;
			case "Jake-shocked":
				dia_chara_port[dia_page_num] = spr_dia_jake_shocked;
				dia_chara_sound[dia_page_num] = snd_dia_jake;
				break;
			case "Jake-suspicious":
				dia_chara_port[dia_page_num] = spr_dia_jake_suspicious;
				dia_chara_sound[dia_page_num] = snd_dia_jake;
				break;
			case "Jake-unamused":
				dia_chara_port[dia_page_num] = spr_dia_jake_unamused;
				dia_chara_sound[dia_page_num] = snd_dia_jake;
				break;
			#endregion
			
			#region Vortex dialogue portraits
			case "Vortex":
				dia_chara_port[dia_page_num] = spr_dia_vortex;
				dia_chara_sound[dia_page_num] = snd_dia_vortex;
				break;
			#endregion
			
			#region Sylux dialogue portraits
			case "Sylux":
				dia_chara_port[dia_page_num] = spr_dia_sylux;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-angry":
				dia_chara_port[dia_page_num] = spr_dia_sylux_angry;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-suspicious":
				dia_chara_port[dia_page_num] = spr_dia_sylux_suspicious;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-creepy":
				dia_chara_port[dia_page_num] = spr_dia_sylux_creepy;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-think":
				dia_chara_port[dia_page_num] = spr_dia_sylux_think;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-sideEye":
				dia_chara_port[dia_page_num] = spr_dia_sylux_side_eye;
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			case "Sylux-ending":
				dia_chara_sound[dia_page_num] = snd_dia_sylux;
				break;
			#endregion
			
			#region Human Sylux dialogue portraits
			case "Sylux-human":
				dia_chara_port[dia_page_num] = spr_dia_human_sylux;
				dia_chara_sound[dia_page_num] = snd_dia_human_sylux;
				break;
			case "Sylux-human-angry":
				dia_chara_port[dia_page_num] = spr_dia_human_sylux_angry;
				dia_chara_sound[dia_page_num] = snd_dia_human_sylux;
				break;
			#endregion
			
			#region Dr. Sebastian Kox dialogue portraits
			case "Sebastian":
				dia_chara_port[dia_page_num] = spr_dia_sebastian;
				dia_chara_sound[dia_page_num] = snd_dia_sebastian;
				break;
			case "Sebastian-audio":
				dia_chara_sound[dia_page_num] = snd_dia_sebastian;
				break;
			#endregion
			
			#region August dialogue portraits
			case "August-audio":
				dia_chara_sound[dia_page_num] = snd_dia_august;
				break;
			#endregion
			
			#region misc
			case "Sign":
				tbox_texture[dia_page_num] = spr_textbox_sign;
				break;
			case "Screen":
				tbox_texture[dia_page_num] = spr_textbox_screen;
				break;
			#endregion
		}
	}
	
	if (argument_count > 2) {
		dia_chara_port_side[dia_page_num] = argument[2];
	}
	
	dia_page_num++;
}

/// @param _option
/// @param _link_id
function set_option(_option, _link_id) {
	option[option_num] = _option;
	option_link_id[option_num] = _link_id
	
	option_num++;
}

/// @param _dialogue_id
function create_tbox(_dialogue_id) {
	with (instance_create_depth(0, 0, -999, obj_textbox)) {
		start_dialogue(_dialogue_id);
	}
}