function set_text_defaults() {
    line_break_pos[0, page_num] = 999;
    line_break_num[page_num] = 0;
    line_break_off[page_num] = 0;
    
    for (var _i = 0; _i < 500; _i++) {
        col_1[_i, page_num] = c_white;
        col_2[_i, page_num] = c_white;
        col_3[_i, page_num] = c_white;
        col_4[_i, page_num] = c_white;
        
        float_text[_i, page_num] = 0;
        float_dir[_i, page_num] = _i * 15;
        
        shake_text[_i, page_num] = 0;
        shake_dir[_i, page_num] = irandom(360);
        shake_intensity[_i, page_num] = irandom(4);
    }
    
    tbox_spr[page_num] = spr_tbox;
    port_spr[page_num] = noone;
    port_side[page_num] = 1;
    
    voice[page_num] = snd_dialogue;
}

/// @param First_character
/// @param Last_character
/// @param c1
/// @param c2
/// @param c3
/// @param c4
function set_text_color(_first_chara, _last_chara, _c1, _c2, _c3, _c4) {
    for (var _i = _first_chara; _i <= _last_chara; _i++) {
        col_1[_i, page_num - 1] = _c1;
        col_2[_i, page_num - 1] = _c2;
        col_3[_i, page_num - 1] = _c3;
        col_4[_i, page_num - 1] = _c4;
    }
}

/// @param First_character
/// @param Last_character
function set_floating_text(_first_chara, _last_chara) { 
    for (var _i = _first_chara; _i <= _last_chara; _i++) {
        float_text[_i, page_num - 1] = 1;
    }
}

/// @param First_character
/// @param Last_character
function set_shaking_text(_first_chara, _last_chara) { 
    for (var _i = _first_chara; _i <= _last_chara; _i++) {
        shake_text[_i, page_num - 1] = 1;
    }
}

/// @param Dialogue
/// @param [Portrait]
/// @param [Side]
function create_dialogue(_dialogue) {
    set_text_defaults();
    
    text[page_num] = _dialogue;
    
    if (argument_count > 1) {
        switch (argument[1]) {
            #region Jake Portraits
            case "jake":
                port_spr[page_num] = spr_dia_jake;
                voice[page_num] = snd_dia_jake;
                break;

            case "jake_happy":
                port_spr[page_num] = spr_dia_jake_happy;
                voice[page_num] = snd_dia_jake;
                break;

            case "jake_shocked":
                port_spr[page_num] = spr_dia_jake_shocked;
                voice[page_num] = snd_dia_jake;
                break;

            case "jake_smug":
                port_spr[page_num] = spr_dia_jake_smug;
                voice[page_num] = snd_dia_jake;
                break;

            case "jake_suspicious":
                port_spr[page_num] = spr_dia_jake_suspicious;
                voice[page_num] = snd_dia_jake;
                break;

            case "jake_unamused":
                port_spr[page_num] = spr_dia_jake_unamused;
                voice[page_num] = snd_dia_jake;
                break;
            #endregion
            
            #region Signs
            case "sign":
                tbox_spr[page_num] = spr_tbox_sign;
                break;

            case "screen":
                tbox_spr[page_num] = spr_tbox_screen;
                break;
            #endregion
        }
    }
    
    if (argument_count > 2)
        port_side[page_num] = argument[2];
    
    page_num++;
}

/// @param option
/// @param link_id
function create_dialogue_option(_option, _link_id) {
    option[option_num] = _option;
    option_link_id[option_num] = _link_id;
    
    option_num++;
}

/// @param ID
function create_tbox(_id) {
    with (instance_create_depth(x, y, depth, obj_textbox))
        create_dialogue_from_id(_id);
}