var _camera = view_camera[0];

var _camera_width = camera_get_view_width(_camera);
var _camera_height = camera_get_view_height(_camera);

var _camera_x = x - _camera_width / 2;
var _camera_y = y - _camera_height / 2;

_camera_x = clamp(_camera_x, 0, room_width - _camera_width);
_camera_y = clamp(_camera_y, 0, room_height - _camera_height);

camera_set_view_pos(_camera, _camera_x, _camera_y);