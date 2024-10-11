var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

var _para = 0.5;

draw_sprite_tiled(spr_background_ashpit, 0, _cam_x * _para, _cam_y * _para);

draw_sprite_tiled(spr_background_ashpit, 1, _cam_x * 0.25, _cam_y * 0.25);

effect_create_depth(depth, ef_cloud, obj_mainchara.x + random_range(-128, 128), obj_mainchara.y + random_range(-128, 128), 1, c_black);