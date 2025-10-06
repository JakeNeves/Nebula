target_x = x;
target_y = y;

npc_dir = 0;

alarm[0] = 60;

collidable_map = layer_tilemap_get_id("Collidable");

knockback_x = 0;
knockback_y = 0;

sound_delay_max = 3;
sound_delay = 0;

money_chance = random(30);
crit_chance = random(100);

hp_max = hp;

guix = display_get_gui_width();
guiy = display_get_gui_height();