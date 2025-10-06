if (cur_dia < 0)
    exit;

var _gamepad = global.main_gamepad;

var _key_action = real(keyboard_check(vk_space));

var _struct = dialogue[cur_dia].dia_text;
var _name = dialogue[cur_dia].dia_chara;
var _voice = dialogue[cur_dia].dia_sound;

if (_gamepad != undefined)
    _key_action = real(gamepad_button_check_pressed(_gamepad, gp_face1));

if (cur_chara < string_length(_struct)) {
    cur_chara += chara_spd * (1 + (_key_action > 0));
    draw_dialogue = string_copy(_struct, 0, cur_chara)
    
    if (global.chara_sound[$ _voice] != noone)
    {
        if (sound_count < sound_delay)
            sound_count++;
        else {
            sound_count = 0;
            audio_play_sound(global.chara_sound[$ _voice], 8, false);
        }
    }
}
else if (_key_action > 0) {
    cur_dia++;
    
    audio_play_sound(snd_dialogue_advance, 8, false);
    if (cur_dia >= array_length(dialogue)) {
        instance_destroy();
        
        if (can_goto_next_room)
            room_goto(obj_npc.room_id);
    }
    else
        cur_chara = 0;
}