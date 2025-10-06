with (obj_stat_persist) {
    other.lv = stat_level;
    other.xp = plr_xp;
    other.xp_req = plr_xp_req;
    other.plr_damage = stat_damage;
    other.plr_hp = stat_hp;
    other.plr_hp_max = stat_hp_max;
    other.money = stat_money;
    other.x = pos_x;
    other.y = pos_y;
    other.direction = plr_dir;
    
    instance_destroy();
}