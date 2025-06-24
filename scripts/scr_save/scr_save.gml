function save_area() {
	var _area_struct = {
		
	}
	
	switch (room) {
        #region Gallahard Fields
        case rm_fields_1:
            global.area_data.fields_1 = _area_struct;
            break;
        #endregion
        
		#region Mines of Gallahard
		case rm_mines_1:
			global.area_data.mines_1 = _area_struct;
			break;
		#endregion
			
		#region Dark Mines
		case rm_dark_mines_1:
			global.area_data.dark_mines_1 = _area_struct;
			break
		case rm_dark_mines_2:
			global.area_data.dark_mines_1 = _area_struct;
			break
		case rm_dark_mines_3:
			global.area_data.dark_mines_1 = _area_struct;
			break
		#endregion
			
		#region Ashpit
		case rm_ashpit_1:
			global.area_data.ashpit_1 = _area_struct;
			break;
		#endregion
	}
}
	
function load_area() {
	var _area_struct = 0;
	
	switch (room) {
        #region Gallahard Fields
        case rm_fields_1:
            global.area_data.fields_1 = _area_struct;
            break;
        #endregion
        
		#region Mines of Gallahard
		case rm_mines_1:
			global.area_data.mines_1 = _area_struct;
			break;
		#endregion
			
		#region Dark Mines
		case rm_dark_mines_1:
			global.area_data.dark_mines_1 = _area_struct;
			break
		case rm_dark_mines_2:
			global.area_data.dark_mines_1 = _area_struct;
			break
		case rm_dark_mines_3:
			global.area_data.dark_mines_1 = _area_struct;
			break
		#endregion
			
		#region Ashpit
		case rm_ashpit_1:
			global.area_data.ashpit_1 = _area_struct;
			break;
		#endregion
	}
	
	if (!is_struct(_area_struct))
		exit;
}

// @param _file_num
function save_game(_file_num = 0) {
	var _save = array_create(0);
	
	save_area();
	
	global.player_data.save_x = obj_mainchara.x;
	global.player_data.save_y = obj_mainchara.y;
	global.player_data.save_room = room_get_name(room);
    
	global.player_data.route = global.route_type;
	global.player_data.difficulty = global.difficulty;
    
    global.player_data.damage = obj_mainchara.plr_damage;
    global.player_data.level = obj_mainchara.lv;
    global.player_data.xp = obj_mainchara.xp;
    global.player_data.xp_req = obj_mainchara.xp_req;
    global.player_data.hp = obj_mainchara.plr_hp;
    global.player_data.hp_max = obj_mainchara.plr_hp_max;
    
    global.player_data.money = obj_mainchara.money;
	
	array_push(_save, global.player_data);
	array_push(_save, global.area_data);
	
	var _savefile = "game_savedata_" + string(_file_num) + ".sav";
	var _json = json_stringify(_save);
	
	var _buff = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
	
	buffer_write(_buff, buffer_string, _json);
	buffer_save(_buff, _savefile);
	buffer_delete(_buff);
}

// @param _file_num
function load_game(_file_num = 0) {
	var _savefile = "game_savedata_" + string(_file_num) + ".sav";
	
	if (!file_exists(_savefile))
		exit;
		
	var _buff = buffer_load(_savefile);
	var _json = buffer_read(_buff, buffer_string);
	buffer_delete(_buff);
	
	var _load = json_parse(_json);
	
	global.player_data = array_get(_load, 0);
	global.area_data = array_get(_load, 1);
	
	global.route_type = global.player_data.route;
	global.difficulty = global.player_data.difficulty;
    
    obj_mainchara.plr_damage = global.player_data.damage;
    obj_mainchara.lv = global.player_data.level;
    obj_mainchara.xp = global.player_data.xp;
    obj_mainchara.xp_req = global.player_data.xp_req;
    obj_mainchara.plr_hp = global.player_data.hp;
    obj_mainchara.plr_hp_max = global.player_data.hp_max;
    
    obj_mainchara.money = global.player_data.money;
	
	var _load_area = asset_get_index(global.player_data.save_room);
	room_goto(_load_area);
	
	obj_saveload_manager.skip_saving = true;
	
	if (instance_exists(obj_mainchara))
		instance_destroy(obj_mainchara);
		
	instance_create_depth(global.player_data.save_x, global.player_data.save_y, depth, obj_mainchara);
	
	load_area();
}