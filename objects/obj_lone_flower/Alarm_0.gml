sound_roll = random_range(0, 3);

switch (sound_roll) {
	case 0:
		audio_play_sound(snd_lone_flower_gurgle_1, 8, false, 1, 0, random_range(0, 2));
	break;
	case 1:
		audio_play_sound(snd_lone_flower_gurgle_2, 8, false, 1, 0, random_range(0, 2));
	break;
	case 2:
		audio_play_sound(snd_lone_flower_say_1, 8, false, 1, 0, random_range(0, 2));
	break;
	case 3:
		audio_play_sound(snd_lone_flower_say_2, 8, false, 1, 0, random_range(0, 2));
	break;
}

alarm[0] = 1200;