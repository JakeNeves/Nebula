music_chance = random(4);

if (room == rm_menu) 
    set_music_ingame(snd_mus_menu, 30, 0);
else 
    set_music_ingame(noone, 30, 0);
    

// Mines of Gallahard
if (room == rm_mines_1 ||
    room == rm_mines_2)
        set_music_ingame(snd_mus_mines, 30, 0);

// Dark Mines
if (room == rm_dark_mines_1 ||
    room == rm_dark_mines_2 ||
    room == rm_dark_mines_3)
        set_music_ingame(snd_mus_dark_mines, 30, 0);

// Ashpit
if (room == rm_ashpit_1 ||
    room == rm_ashpit_2)
        set_music_ingame(snd_mus_ashpit, 30, 0);

// Red Rooms (Secret Rooms)
if (room == rm_rr_1)
        set_music_ingame(snd_mus_red_room, 30, 0);

// Lab
if (room == rm_lab_foyer ||
    room == rm_lab_office)
        set_music_ingame(snd_mus_sebastians_lab, 30, 0);

// Fields
if (room == rm_fields_1 ||
    room == rm_fields_2 ||
    room == rm_fields_3)
        set_music_ingame(snd_mus_fields, 30, 0);

// Oridon
if (room == rm_oridon_centeral)
        set_music_ingame(snd_mus_oridon, 30, 0);

// Cesspool
if (room == rm_cesspool_1)
        set_music_ingame(snd_mus_cesspool, 30, 0);

// Bloodpoke Valley
if (room == rm_bloodpoke_1 ||
    room == rm_bloodpoke_2 ||
    room == rm_bloodpoke_3)
        set_music_ingame(snd_mus_bloodpoke, 30, 0);

// Bloodpoke Wasteland
if (room == rm_wasteland_1) {
		if (music_chance < 3)
			set_music_ingame(snd_mus_wasteland, 30, 0);
		else
			set_music_ingame(snd_mus_wasteland_alt, 30, 0);
}

// Valley of Ten Thousand Cuts

// Mausoleum
if (room == rm_mausoleum_1 ||
    room == rm_mausoleum_2)
        set_music_ingame(snd_mus_mausoleum, 30, 0);

// The Void
if (room == rm_void_1 ||
    room == rm_void_2 ||
    room == rm_void_3 ||
    room == rm_void_4)
        set_music_ingame(snd_mus_void_1, 30, 0);