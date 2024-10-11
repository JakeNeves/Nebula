depth = -999;

tbox_width = 200;
tbox_height = 64;

tbox_border = 8;

line_separation = 8;

line_width = tbox_width - tbox_border * 2;

tbox_texture[0] = spr_textbox;
tbox_image = 0;
tbox_image_speed = 6 / 60;

dia_page = 0;
dia_page_num = 0;

text[0] = "";

text_length[0] = string_length(text[0]);

chara[0, 0] = "";
chara_x[0, 0] = 0;
chara_y[0, 0] = 0;

draw_char = 0;
text_speed = 1;

option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_num = 0;

setup = false;

sound_delay = 3;
sound_count = sound_delay;

set_textbox_defaults();

last_free = 0;

text_pause = 0;
text_time = 12;

text_size = 1;