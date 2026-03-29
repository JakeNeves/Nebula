// Makes a "settings.txt" file is there isn't one.
if (!file_exists("settings.txt"))
    save_settings();
else
    load_settings();