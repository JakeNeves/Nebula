if (alarm[0] < 0 && other.can_hurt_player && can_take_damage) {
    plr_hp -= other.dmg;
    alarm[0] = 5;
    image_blend = c_red;
    image_alpha = 0.5;
    
    if (plr_hp >= 0)
        audio_play_sound(random_range(array_first(hit_sound), array_last(hit_sound)), 8, false, 1, 0, random_range(1, 1.05));
    
    if (plr_hp <= 0) {
        audio_play_sound(random_range(array_first(death_sound), array_last(death_sound)), 8, false);
        
        plr_hp = plr_hp_max;
        xp = 0;
        
        room_restart(); // temp. thingy, will be replaced with something else eventually...
    }
    
    if (random(3)) {
        audio_play_sound(snd_blood, 8, false, 1, 0, random_range(0.9, 1.05));
        var _blood = instance_create_depth(x + random_range(-16, 16), y + random_range(-16, 16), 999, obj_effect_blood);
        
        for (var _i = 0; _i < random_range(2, 4); _i++)
            var _blood_effect = instance_create_depth(x + random_range(-8, 8), y + random_range(-8, 8), random_range(-999, 999), obj_effect_explode_blood);
    }
}