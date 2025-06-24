if (alarm[1] < 0) {
    image_alpha = 0.5;
    
    target_x = 0;
    target_y = 0;
    
    sprite_index = stun_sprite;
    
    alarm[1] = stun_time * 60;
}