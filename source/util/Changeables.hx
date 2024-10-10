package util;

import flixel.FlxG;
import flixel.input.keyboard.FlxKey;
import flixel.util.FlxSave;

class Changables
{
	/**
	 * The game zoom tells how big things should be
	 * on-screen, making it easier to see things.
	 * 
	 * The default value is `3`
	 * @param gameZoom
	 */
	public static var safeFramerate:Int = 120;

	public static var displayFramerate:Bool = true;
	public static var antialiasing:Bool = true;
	public static var fullscreen:Bool = false;

	public static var extraDetails:Bool = true;

	public static var defaultKeytbinds:Array<FlxKey> = [
		     A,  LEFT,
		     S,  DOWN,
		     W,    UP,
		     D, RIGHT,
		ESCAPE, ESCAPE
	];

	public static function saveSettings()
	{
		FlxG.save.data.safeFramerate = safeFramerate;
		FlxG.save.data.displayFramerate = displayFramerate;
		FlxG.save.data.antialiasing = antialiasing;
		FlxG.save.data.extraDetails = extraDetails;

		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('settings', 'tetrasoft');

		trace("Settings have been saved!");
	}
}
