music_chance = random(4);

switch (room) {
	case rm_menu:
		set_music_ingame(snd_mus_menu, 30, 0);
	break
    
    #region Red Rooms
    case rm_rr_1:
        set_music_ingame(snd_mus_red_room, 30, 0);
    break;
    #endregion
	
	#region Mines of Gallahard
	#region Mines Enterances
	case rm_mines_fields_enterance:
		set_music_ingame(noone, 30, 0);
	break;
	#endregion
	
	case rm_mines_1:
		set_music_ingame(snd_mus_mines, 30, 0);
	break;
    
	case rm_mines_2:
		set_music_ingame(snd_mus_mines, 30, 0);
	break;
	#endregion
	
	#region Dark Mines of Gallahard
	case rm_dark_mines_enterance:
		set_music_ingame(noone, 30, 0);
	break;
	
	case rm_dark_mines_1:
		set_music_ingame(snd_mus_dark_mines, 30, 0);
	break;
	
	case rm_dark_mines_2:
		set_music_ingame(snd_mus_dark_mines, 30, 0);
	break;
	
	case rm_dark_mines_3:
		set_music_ingame(snd_mus_dark_mines, 30, 0);
	break;
	#endregion
	
	#region Ashpit
	case rm_ashpit_enterance:
		set_music_ingame(noone, 30, 0);
	break;
	
	case rm_ashpit_1:
		set_music_ingame(snd_mus_ashpit, 30, 0);
	break;
	case rm_ashpit_2:
		set_music_ingame(snd_mus_ashpit, 30, 0);
	break;
	#endregion
	
	#region Sebastian's Lab
	case rm_lab_foyer:
		set_music_ingame(snd_mus_sebastians_lab, 30, 0);
	break;
	
	case rm_lab_office:
		set_music_ingame(snd_mus_sebastians_lab, 30, 0);
	break;
	
	case rm_sebastians_study:
		set_music_ingame(noone, 30, 0);
	break;
	#endregion
	
	#region Bloodpoke Valley
	#endregion
	
	#region Bloodpoke Wasteland
	case rm_wasteland_1:
		if (music_chance < 3)
			set_music_ingame(snd_mus_wasteland, 30, 0);
		else
			set_music_ingame(snd_mus_wasteland_alt, 30, 0);
	break;
	#endregion
	
	#region Valley of Ten Thousand Cuts
	#endregion
	
	#region Mausoleum
	case rm_mausoleum_1:
		set_music_ingame(snd_mus_mausoleum, 60, 0);
	break;
	case rm_mausoleum_2:
		set_music_ingame(snd_mus_mausoleum, 60, 0);
	break;
	#endregion
	
	#region The Void
	case rm_void_1:
		set_music_ingame(snd_mus_void_1, 30, 0);
	break;
	case rm_void_2:
		set_music_ingame(snd_mus_void_1, 30, 0);
	break;
	#endregion
	
	#region Fields
	case rm_fields_1:
		set_music_ingame(snd_mus_fields, 30, 0);
	break;
	#endregion
	
	#region Oridon
	case rm_oridon_centeral:
		set_music_ingame(snd_mus_oridon, 30, 0);
	break;
	#endregion
	
	#region Forest
	#endregion
    
    #region Cesspool
	case rm_cesspool_1:
		set_music_ingame(snd_mus_cesspool, 30, 0);
    break;
    #endregion
    
    default:
        set_music_ingame(noone, 30, 0);
    break;
}