randomize();

global.main_font = font_add_sprite(spr_font, 32, true, 1);

global.game_paused = false;

surface_resize(application_surface, RES_X, RES_Y);
room_goto(INIT_ROOM);

global.blood_and_gore = true;

#region Key Items
global.has_masters_key = false;
#endregion

game_paused_img_spd = 0;