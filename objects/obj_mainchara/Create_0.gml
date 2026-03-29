window_width = window_get_width();
window_height = window_get_height();

plr_speed = 0;
plr_walk_speed = 2;
plr_sprint_speed = 4;

plr_direction = 0;

collidable_map = layer_tilemap_get_id("Collidable");

plr_hp = 100;
plr_hp_max = plr_hp;
plr_damage = 4;

lv = 1;
xp = 0;
xp_req = 100;

money = 0;
money_max = 9999999;

keys = 0;
keys_max = 999;

can_take_damage = true;

regen_rate = 1;
regen_time_max = 60;
regen_time = regen_time_max;
can_regenerate_hp = false;

plr_noclip = false;

fire_delay = 16;
fire_count = fire_delay;

hit_sound = [ // a variety of hit sounds
    snd_player_hit_1,
    snd_player_hit_2,
    snd_player_hit_3
];

death_sound = [ // a couple of death sounds
    snd_player_death_1,
    snd_player_death_2
];

/// @desc Adds a specified amount of money to the player's balance.
/// @param _count The amount of money to add 
function add_money(_count) {
    money += _count;
}

/// @desc Removes a specified amount of money to the player's balance.
/// @param _count The amount of money to remove 
function remove_money(_count) {
    money -= _count;
}

/// @desc Adds a specified amount of keys to the player's key count.
/// @param _count The amount of keys to add 
function add_keys(_count) {
    keys += _count;
}

/// @desc Removes a specified amount of keys to the player's key count.
/// @param _count The amount of keys to remove
function remove_keys(_count) {
    keys -= _count;
}

/// @desc Gives the player an amout of XP that is speciefied, when the player reaches the maximum XP gained, they will level up and the amount of XP for the next level will increase by 25 points.
/// @param _xp The amount of XP to add
function add_xp(_xp) {
    if (lv < 20)
        xp += _xp;
    
    if (xp >= xp_req) {
        audio_play_sound(snd_level_up, 8, false);
        
        lv++;
        xp -= xp_req;
        xp_req += 25;
        
        plr_hp_max += 50;
        plr_hp = plr_hp_max;
        plr_damage += 2;
        
        if (lv == 20) {
            create_dialogue([
            {
                dia_chara: "SYSTEM",
                dia_sound: "system",
                dia_text: $"MAX LEVEL REACHED\nYou've just advanced to LV {lv}! HP + DMG up!"
            }
            ])
        }
        else {
            create_dialogue([
            {
                dia_chara: "SYSTEM",
                dia_sound: "system",
                dia_text: $"LEVEL UP\nYou've just advanced to LV {lv}! HP + DMG up!"
            }
            ])
        }
        
    }
    else
        if (_xp >= 1)
            audio_play_sound(snd_xp_gain, 8, false);
}