if (pickup_sound != noone)
    audio_play_sound(pickup_sound, 8, false);

if (restores_full_health && !heals_player)
    other.plr_hp = other.plr_hp_max;

if (heals_player && !restores_full_health) {
    other.plr_hp += heal_rate;
    
    if (other.plr_hp > other.plr_hp_max)
        other.plr_hp = other.plr_hp_max;
}

instance_destroy();