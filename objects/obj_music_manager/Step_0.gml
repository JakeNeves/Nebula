var _final_vol = global.music_volume;

if (music_asset != target_music) {
	if (audio_is_playing(music_inst)) {
		array_push(fade_out_inst, music_inst);
		array_push(fade_out_inst_vol, fade_inst_volume);
		array_push(fade_out_inst_time, end_fade);
		
		music_inst = noone;
		music_asset = noone;
	}
	
	if (array_length(fade_out_inst) == 0) {
		if (audio_exists(target_music)) {
			music_inst = audio_play_sound(target_music, 4, true);
	
			audio_sound_gain(music_inst, 0, 0);
	
			fade_inst_volume = 0;
		}
	
		music_asset = target_music;
	}
}

if (audio_is_playing(music_inst)) {
	if (start_fade > 0) {
		if (fade_inst_volume < 1)
			fade_inst_volume += 1 / start_fade;
	}
	else {
		fade_inst_volume = 1;
	}
	
	audio_sound_gain(music_inst, fade_inst_volume * _final_vol, 0);
}

for (var _i = 0; _i < array_length(fade_out_inst); _i++) {
	if (fade_out_inst[_i] > 0) {
		if (fade_out_inst_vol[_i] > 0)
			fade_out_inst_vol[_i] -= 1 / fade_out_inst_time[_i];
	}
	else {
		fade_out_inst_vol[_i] = 0;
	}
	
	audio_sound_gain(fade_out_inst[_i], fade_out_inst_vol[_i] * _final_vol, 0);
	
	if (fade_out_inst_vol[_i] <= 0) {
		if (audio_is_playing(fade_out_inst[_i])) {
			audio_stop_sound(fade_out_inst[_i]);
			array_delete(fade_out_inst, _i, 1);
			array_delete(fade_out_inst_vol, _i, 1);
			array_delete(fade_out_inst_time, _i, 1);
			_i--;
		}
	}
}