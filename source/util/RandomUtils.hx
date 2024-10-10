package util;

import flixel.FlxG;
import flixel.util.FlxColor;

class RandomUtils
{
	/**
	 * using the FlxG.camera.fade function, you
	 * can have the screen pulse for how long you like.
	 * @param color the color to pulse on-screen using Hexadecimal
	 * @param time  the amount of time you want the pulse to fade out for
	 */
	public static function screenPulse(color:FlxColor, time:Float)
	{
		FlxG.camera.fade(color, time, true);
	}

	/**
	 * using the FlxG.camera.fade function, you
	 * can have the screen reversivley pulse for how long you like.
	 * @param color the color to pulse on-screen using Hexadecimal
	 * @param time  the amount of time you want the pulse to fade in for
	 */
	public static function reverseScreenPulse(color:FlxColor, time:Float)
	{
		FlxG.camera.fade(color, time, false);
	}
}
