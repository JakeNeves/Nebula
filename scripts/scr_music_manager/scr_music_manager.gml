function set_music_ingame(_music, _fade_cur_music = 0, _fade_in = 0) {
	with (obj_music_manager) {
		target_music = _music;
		end_fade = _fade_cur_music;
		start_fade = _fade_in;
	}
}