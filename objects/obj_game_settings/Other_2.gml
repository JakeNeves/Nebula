var _maxpads = gamepad_get_device_count();

for (var _i = 0; _i < _maxpads; _i++)
{
    if (gamepad_is_connected(_i))
    {
		show_debug_message("Controller Support Thingies!");
    }
}