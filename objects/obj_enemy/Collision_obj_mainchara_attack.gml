if (alarm[1] < 0) {
    if (crit_chance <= 31) {
        hp -= other.damage * 2;
        var _crit = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), -999, obj_effect_crit);
    }
    else
        hp -= other.damage;
    
    image_blend = c_red;
    
    knockback_x = sign(x - other.x);
    knockback_y = sign(y - other.y);
    alarm[1] = 15;
    
    /// @desc This will play the hurt and death sounds when specified in the enemy's variable definitions.
    if (hp <= 0 && death_sound != noone)
        audio_play_sound(death_sound, 8, false, 0.5);
    
    if (hp > 0 && hit_sound != noone) {
        audio_play_sound(hit_sound, 8, false, 0.5, 0, random_range(1, 1.25));
        
        if (sound_delay < sound_delay_max) {
            sound_delay = sound_delay_max
            sound_delay--;
        }
    }
    
    /// @desc If set to "True", the enemy will bleed when attacked.
    if (bleeds) {
        if (random(3)) {
            audio_play_sound(snd_blood, 8, false, 1, 0, random_range(0.9, 1.05));
                    
            var _blood = instance_create_depth(x + random_range(-obj_enemy.sprite_width / 2, obj_enemy.sprite_width / 2), y + random_range(-obj_enemy.sprite_height / 2, obj_enemy.sprite_height / 2), 999, obj_effect_blood);
        
            for (var _i = 0; _i < random_range(2, 8); _i++)
                var _blood_effect = instance_create_depth(x + random_range(-8, 8), y + random_range(-8, 8), random_range(-999, 999), obj_effect_explode_blood);
        }
    }
    
    /// @desc If the player is below their max health, the enemy will have a chance to drop a modkit allowing the player to heal.
    if (obj_mainchara.plr_hp < obj_mainchara.plr_hp_max && hp <= 0 && drops_medkit) {
        if (random(18))
            var _medkit = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_medkit);
    }
    
    /// @desc If set to "True", the enemy will drop money ranging from $1 to $100.
    if (hp <= 0 && drops_money) {
        if (money_chance <= 5) {
            for (var _i = 0; _i < random_range(1, 6); _i++)
                var _coin = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_coin);
        }
        else if (money_chance <= 11)
            var _banknote5 = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_banknote_5);
        else if (money_chance <= 17)
            var _banknote10 = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_banknote_10);
        else if (money_chance <= 23)
            var _banknote20 = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_banknote_20);
        else if (money_chance <= 29)
            var _banknote50 = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_banknote_50);
        else if (money_chance <= 35)
            var _banknote100 = instance_create_depth(x + random_range(-obj_enemy.sprite_width, obj_enemy.sprite_width), y + random_range(-obj_enemy.sprite_height, obj_enemy.sprite_height), depth, obj_banknote_100);
    }
}