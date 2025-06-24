skip_saving = false;

enum ROUTE_TYPE {
	NEUTRAL,
	FAILED_EMPEROR,
	REVELATION
}

enum DIFFICULTY {
	EASY,
	MEDIUM,
	HARD,
	INSANE,
	EXTREME
}

global.game_data_file = 0;

global.neutral_endings_completed = 0;

global.route_type = ROUTE_TYPE.NEUTRAL;
global.difficulty = DIFFICULTY.EASY;

global.player_data = {
	save_x : 0,
	save_y : 0,
	save_room : "",
	
	route : ROUTE_TYPE.NEUTRAL,
	difficulty : DIFFICULTY.EASY,
	
	money : 0,
    
    level : 0,
    xp : 0,
    xp_req : 0,
    hp : 0,
    hp_max : 0,
    damage : 0
}

global.area_data = {
    #region Gallahard Fields
    fields_1: 0,
    #endregion
    
	#region Mines of Gallahard
	mines_1 : 0,
	#endregion
	
	#region Dark Mines
	dark_mines_1 : 0,
	dark_mines_2 : 0,
	dark_mines_3 : 0,
	#endregion
	
	#region Ashpit
	ashpit_1 : 0,
	ashpit_2 : 0,
	#endregion
	
	#region Sebastian's Lab
	lab_foyer: 0,
	lab_office: 0,
	sebastians_study: 0
	#endregion
}