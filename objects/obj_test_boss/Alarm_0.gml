event_inherited();

var _enemy_shot_inst = instance_create_depth(x, y, depth, obj_test_enemy_proj);
    
_enemy_shot_inst.direction = point_direction(x, y, obj_mainchara.x, obj_mainchara.y);