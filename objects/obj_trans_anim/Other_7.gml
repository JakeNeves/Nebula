room_goto(target_room);

if (instance_exists(obj_mainchara)) {
    obj_mainchara.x = target_x;
    obj_mainchara.y = target_y;
    obj_mainchara.plr_direction = target_direction;
}

image_speed = -1;