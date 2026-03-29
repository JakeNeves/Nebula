if (instance_exists(obj_textbox))
    exit;

if (place_meeting(x, y, [obj_mainchara, obj_mainchara_melee])) {
    if (pickup_sound != noone)
    audio_play_sound(pickup_sound, 8, false);
    
    if (restores_full_health && !heals_player)
        obj_mainchara.plr_hp = obj_mainchara.plr_hp_max;
    
    if (heals_player && !restores_full_health) {
        obj_mainchara.plr_hp += heal_rate;
    
        if (obj_mainchara.plr_hp > obj_mainchara.plr_hp_max)
            obj_mainchara.plr_hp = obj_mainchara.plr_hp_max;
    }
    
    if (keys_to_add > 0)
        obj_mainchara.add_keys(keys_to_add);
    
    instance_destroy();
}