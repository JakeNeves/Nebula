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
    "system": snd_dialogue,
    "witness": snd_dia_witness,
    "jake": snd_dia_jake,
    "arizel": snd_dia_arizel,
    "sylux": snd_dia_sylux,
    "vortex": snd_dia_vortex,
    "august": snd_dia_august,
    "sebastian": snd_dia_sebastian
}