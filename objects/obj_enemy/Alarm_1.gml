image_blend = c_white;

if (hp <= 0) {
    hp = 0;
    instance_destroy();
    obj_mainchara.add_xp(xp_value);
}