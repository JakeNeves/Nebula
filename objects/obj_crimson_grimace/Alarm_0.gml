event_inherited();

if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < follow_range && attack_cooldown == 0) {
    audio_play_sound(snd_grimace_attack, 8, false, 1, 0, random_range(0.5, 1.0));
    sprite_index = spr_crimson_grimace_attack;
    attack_cooldown = 115;
    
    var _shoot_inst = instance_create_depth(x, y, depth, obj_grimmace_shot);
    
    _shoot_inst.direction = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);
    _shoot_inst.dmg *= obj_enemy.dmg;
    _shoot_inst.proj_speed = 2.5;
}