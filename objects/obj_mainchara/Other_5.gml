if (room != rm_menu && instance_exists(obj_mainchara)) {
    instance_create_depth(x, y, depth, obj_stat_persist, {
        stat_level: lv,
        plr_xp: xp,
        plr_xp_req: xp_req,
        stat_damage: plr_damage,
        stat_hp: plr_hp,
        stat_hp_max: plr_hp_max,
        stat_money: money,
        plr_dir: direction
        // pos_x: x,
        // pos_y: y,
    });
}