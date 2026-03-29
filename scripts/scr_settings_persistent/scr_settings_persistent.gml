function save_settings() {
    var _settings_data = {
        music: 1,
        blood_gore: true,
        controller_support: false
    };
    
    var _settings = json_stringify(_settings_data);
    
    var _settings_file = file_text_open_write("settings.txt");
    
    file_text_write_string(_settings_file, _settings);
    
    file_text_close(_settings_file);
    
    show_debug_message("Game Settings Saved!");
}

function load_settings() {
    if (file_exists("settings.txt")) {
        var _settings_file = file_text_open_read("settings.txt");
        
        var _settings_json = file_text_read_string(_settings_file);
        
        var _settings = json_parse(_settings_json);
        
        global.music_volume = _settings.music;
        global.blood_and_gore = _settings.blood_gore;
        global.internal_controller_support = _settings.controller_support;
        
        file_text_close(_settings_file)
        
        show_debug_message("Game Settings Loaded!");
    }
}