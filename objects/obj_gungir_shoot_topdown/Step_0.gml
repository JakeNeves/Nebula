y -= 5;

time_left--;

if (time_left <= 0 || place_meeting(x, y, obj_shooter_enemy))
    instance_destroy();