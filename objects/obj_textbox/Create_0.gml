depth = -9999;

/// TBox Params
tbox_width = 208;
tbox_height = 64;
border = 6;
line_separation = 8;
line_width = tbox_width - border * 2;
tbox_spr[0] = spr_tbox;
tbox_img = 0;
tbox_img_speed = 12 / 60;

/// Text
page = 0;
page_num = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
chara[0, 0] = "";
chara_x[0, 0] = 0;
chara_y[0, 0] = 0;
draw_chara = 0;
text_speed = 1;
cursor_img_speed = 8 / 60;

/// Dialogue Options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_num = 0;

setup = false;

/// Voice
voice_delay = 3;
voice_count = voice_delay;

/// Effects
set_text_defaults();
last_free = 0;

text_pause_timer = 0;
text_pause_time = 12;