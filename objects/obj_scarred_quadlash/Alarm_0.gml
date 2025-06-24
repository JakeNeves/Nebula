event_inherited();

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < follow_range && attack_cooldown == 0) {
    audio_play_sound(snd_quadlash_attack, 8, false, 1, 0, random_range(0.5, 1.0));
    sprite_index = spr_scarred_quadlash_attack;
    attack_cooldown = 120;
}