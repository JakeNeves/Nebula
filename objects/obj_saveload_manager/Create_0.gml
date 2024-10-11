skip_saving = false;

enum ROUTE_TYPE {
	NEUTRAL,
	FAILED_EMPEROR,
	REVELATION
}

enum MENU_TYPE {
	NORMAL,
	POST_NEUTRAL
}

enum DIFFICULTY {
	EASY,
	MEDIUM,
	HARD,
	INSANE,
	EXTREME
}

enum ARMOR {
	NONE,
	PLAINSTRIDERS_LEATHERS,
	FARADAY,
	BULLETPROOF_VEST,
	MARINE,
	WORLDWALKERS_SCARF,
	PRIESTS_GOUND,
	DEMON_BUSTER
}

enum MELEE_WEAPON {
	TARNISHED_KNIFE,
	RUSTED_BAYONET,
	HATCHET,
	AXE,
	CROWBAR,
	PIPE_WRENCH,
	CAST_IRON_SKILLET,
	BATTLE_SIGN,
	RAZORWIRE_BASEBALL_BAT,
	CHAINSWORD,
	CHAINSAW,
	BRASS_KNUCKLES,
	MORNINGSTAR,
	IRON_BATTLE_GAUNTLETS,
	HYPEREON
}

enum RANGED_WEAPON {
	NONE,
	OLD_SHOTGUN,
	DESERT_EAGLE,
	SNIPERS_RIFLE,
	REVOLVER,
	AR_15,
	FLINTLOCK_PISTOL,
	RAILGUN,
	M1_FLARE_PISTOL,
	BOLTER,
	MAGNUM_ASSAULT_RIFLE,
	RPG,
	GAUSS_BOLTER,
	GAUSS_PISTOL,
	GAUSS_RAILGUN,
	NEUTRON_GAUSS_RIFLE
}
	
enum AREA_ID {
	PALACE,
	FIELDS,
	LAB,
	VOID,
	ORIDON,
	MINES,
	DARK_MINES,
	FROSTLANDS
}

global.game_data_file = 0;

global.neutral_endings_completed = 0;

global.route_type = ROUTE_TYPE.NEUTRAL;
global.difficulty = DIFFICULTY.EASY;

global.armor = ARMOR.NONE;

global.melee_weapon = MELEE_WEAPON.TARNISHED_KNIFE;
global.ranged_weapon = RANGED_WEAPON.NONE;

global.hp = 100;

// Defensive Stats
global.def = 0;
global.damage_reduction = 0;

// Offensive Stats
global.damage = 0;
global.crit = 0;

global.alcohol_level = 0.0;
global.malice_exposure = 0;
global.taint = 0.0;
global.money = 0.0;

global.player_data = {
	save_x : 0,
	save_y : 0,
	save_room : "",
	
	route : ROUTE_TYPE.NEUTRAL,
	difficulty : DIFFICULTY.EASY
}

global.area_data = {
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