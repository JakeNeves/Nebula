if (keyboard_check_pressed(vk_f11)) {
	window_set_fullscreen(!window_get_fullscreen());
}

if (!instance_exists(obj_mainchara_plat))
	exit;
	
var _cam_width = camera_get_view_width(view_camera[0]);
var _cam_height = camera_get_view_height(view_camera[0]);

var _cam_x = obj_mainchara_plat.x - _cam_width / 2;
var _cam_y = obj_mainchara_plat.y - _cam_height / 2;

_cam_x = clamp(_cam_x, 0, room_width - _cam_width);
_cam_y = clamp(_cam_y, 0, room_height - _cam_height);

cam_final_x += (_cam_x - cam_final_x) * cam_trail;
cam_final_y += (_cam_y - cam_final_y) * cam_trail;

camera_set_view_pos(view_camera[0], cam_final_x, cam_final_y);