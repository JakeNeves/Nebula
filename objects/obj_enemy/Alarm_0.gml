/// @desc This is effectively the default AI every enemy uses, you can give it custom AI by inheriting the event to add your own AI code.
if (instance_exists(obj_mainchara) && distance_to_object(obj_mainchara) < follow_range && follows_player) {
    target_x = obj_mainchara.x;
    target_y = obj_mainchara.y;
}
else {
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;