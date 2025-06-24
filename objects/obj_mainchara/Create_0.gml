window_width = window_get_width();
window_height = window_get_height();

plr_speed = 0;
plr_walk_speed = 1;
plr_sprint_speed = 3;

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

regen_rate = 1;
regen_time_max = 60;
regen_time = regen_time_max;
can_regenerate_hp = false;

plr_noclip = false;

hit_sound = [ // a variety of hit sounds
    snd_player_damage_1,
    snd_player_damage_2,
    snd_player_damage_3,
    snd_player_damage_4
];

/// @desc Adds a specified amount of money to the player's balance.
/// @param _count The amount of money to add 
function add_money(_count) {
    money += _count;
}

/// @desc Gives the player an amout of XP that is speciefied, when the player reaches the maximum XP gained, they will level up and the amount of XP for the next level will multiplied by 1.5.
/// @param _xp The amount of XP to add
function add_xp(_xp) {
    xp += _xp;
    
    if (xp >= xp_req) {
        audio_play_sound(snd_level_up, 8, false);
        
        lv++;
        xp -= xp_req;
        xp_req *= 1.5;
        
        plr_hp_max += 10;
        plr_hp = plr_hp_max;
        plr_damage += 2;
        
        create_dialogue([
        {
            chara: "SYSTEM",
            dia_text: $"LEVEL UP\nYou've just advanced to LV {lv}! HP + DMG up!"
        }
        ])
    }
    else
        if (_xp >= 1)
            audio_play_sound(snd_xp_gain, 8, false);
}