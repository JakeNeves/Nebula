package settings;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.util.FlxSignal;

class PlayerSettings
{
	static public var playerCount(default, null) = 0;
	static public var player(default, null):PlayerSettings;

	function new(id, scheme)
	{
		//	this.id = id;
		//	this.controls = new Controls('player$id', scheme);
	}
}
