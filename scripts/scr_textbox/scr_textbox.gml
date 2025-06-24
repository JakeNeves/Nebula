function create_dialogue(_dialogue) {
    if (instance_exists(obj_textbox))
        return;
    
    var _inst = instance_create_depth(0, 0, 0, obj_textbox);
    _inst.dialogue = _dialogue;
    _inst.cur_dia = 0;
}

chara_color = {
    "SYSTEM": c_yellow,
    "interact": c_black,
    "witness": c_black,
    "Jake": c_blue,
    "Arizel": c_maroon,
    "Sylux": c_red,
    "Vortex": c_fuchsia,
    "August": c_orange,
    "Sebastian": c_blue
}

chara_sound = {
    "SYSTEM": snd_dialogue,
    "interact": snd_dialogue,
    "witness": snd_dia_witness,
    "Jake": snd_dia_jake,
    "Arizel": snd_dia_arizel,
    "Sylux": snd_dia_sylux,
    "Vortex": snd_dia_vortex,
    "August": snd_dia_august,
    "Sebastian": snd_dia_sebastian
}