package util;

import flixel.FlxG;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxSave;

class Changables
{
	public static var gameZoom:Float = 1.0;
	public static var safeFramerate:Int = 120;
	public static var displayFramerate:Bool = true;
	public static var antialiasing:Bool = true;

	public static var defaultKeytbinds:Array<FlxKey> = [
		     A,  LEFT,
		     S,  DOWN,
		     W,    UP,
		     D, RIGHT,
		ESCAPE, ESCAPE
	];

	public static function saveSettings()
	{
		FlxG.save.data.gameZoom = gameZoom;
		FlxG.save.data.safeFramerate = safeFramerate;
		FlxG.save.data.displayFramerate = displayFramerate;
		FlxG.save.data.antialiasing = antialiasing;

		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('settings', 'tetrasoft');

		trace("Settings have been saved!");
	}
}
