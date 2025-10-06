var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

var _para = 0.5;

draw_sprite_tiled(spr_foreground_cesspool, 0, _cam_x * _para, _cam_y * _para);