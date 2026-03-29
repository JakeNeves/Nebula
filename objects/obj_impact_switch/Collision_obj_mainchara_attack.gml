if (instance_exists(switch_block)) {
    audio_play_sound(snd_impact_switch_trigger, 8, false);
        
    for (var _i = 0; _i < instance_number(switch_block); _i++) {
        audio_play_sound(snd_switch_block, 8, false);
            
        obj_switch_block.inverted = !obj_switch_block.inverted;
    }
}
else
    audio_play_sound(snd_impact_switch_fail, 8, false);