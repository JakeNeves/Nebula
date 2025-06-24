function save_settings() {
    var settings = {
        blood_gore: global.blood_and_gore
    }
}

function load_settings() {
    var settings = 0;
    
    if (!is_struct(settings))
        exit;
}

function save_game_settings() {
    var _save_settings = "settings.sav";
    
    var _json = json_stringify(_save_settings);
        
    var _buff = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1);
        
    buffer_write(_buff, buffer_string, _json);
    buffer_save(_buff, _save_settings);
    buffer_delete(_buff);
}

function load_game_settings() {
    var _save_settings = "settings.sav";
    
    if (!file_exists(_save_settings))
        exit;
    
    var _buff = buffer_load(_save_settings);
    var _json = buffer_read(_buff, buffer_string);
    buffer_delete(_buff);
        
    var _load = json_parse(_json);
    
    load_settings();
}