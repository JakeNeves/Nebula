var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);

draw_sprite_tiled(sprite_index, image_index, _cam_x, _cam_y);