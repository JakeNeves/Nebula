global.game_data_file = 0;

global.game_data = {
    game_difficulty: DIFFICULTY.EASY,
    game_route: ROUTE_TYPE.NEUTRAL,
    last_saved_room: "",
    room_data: { }
};

// @param _file_num
function save_game(_file_num = 0) {
    save_room();
    
    var _datastring = json_stringify(global.game_data);
    
    var _buffer = buffer_create(string_byte_length(_datastring) + 1, buffer_fixed, 1);
    
    show_debug_message($"Game progress saved to game_savedata_{string(_file_num)}!");
    
    buffer_write(_buffer, buffer_string, _datastring);
    
	buffer_save(_buffer, "game_savedata_" + string(_file_num) + ".txt");
    
    buffer_delete(_buffer);
}

function save_room() {
    var _data = [ ];
    
    with (obj_mainchara) {
        var _player_data = {
            object: object_get_name(object_index),
            hp: plr_hp,
            hp_max: plr_hp_max,
            lv: lv,
            damage: plr_damage,
            xp: xp,
            xp_req: xp_req,
            x: x,
            y: y,
            money: money,
            keys: keys
        };
        
        array_push(_data, _player_data);
    }
    
    global.game_data.game_difficulty = global.difficulty;
    global.game_data.game_route = global.route_type;
    global.game_data.last_saved_room = room_get_name(room);
    
    struct_set(global.game_data.room_data, room_get_name(room), _data);
}

// @param _file_num
function load_game(_file_num = 0) {
    if (file_exists("game_savedata_" + string(_file_num) + ".txt")) {
        var _buffer = buffer_load("game_savedata_" + string(_file_num) + ".txt");
        
        var _json = buffer_read(_buffer, buffer_string);
        
        show_debug_message($"Game progress loaded from game_savedata_{string(_file_num)}!");
        
        buffer_delete(_buffer);
        
        global.game_data = json_parse(_json);
        
        load_room();
    }
}

function load_room() {
    var _data = struct_get(global.game_data.room_data, room_get_name(room));
    var _loadroom = asset_get_index(global.game_data.last_saved_room);
    
    if (_data != undefined) {
        instance_destroy(obj_mainchara);
        
        for (var _i = 0; _i < array_length(_data); _i++) {
            var _player_data = _data[_i];
            
            instance_create_depth(_player_data.x, _player_data.y, depth, asset_get_index(_player_data.object), _data);
            
            global.difficulty = _player_data.game_difficulty;
            global.route_type = _player_data.game_route;
        }
    }
        
    room_goto(_loadroom);
}