image_blend = c_white;

if (hp <= 0) {
    /// @desc If set to "True", the enemy will explode into blood particles when killed.
    if (bleeds && global.blood_and_gore) {
        audio_play_sound(snd_blood, 8, false, 10, 0, random_range(0.9, 1.05));
        for (var _i = 0; _i < random_range(6, 12); _i++)
               var _blood_effect = instance_create_depth(x + random_range(-8, 8), y + random_range(-8, 8), random_range(-999, 999), obj_effect_explode_blood);
    }
    
    hp = 0;
    instance_destroy();
    obj_mainchara.add_xp(xp_value);
}