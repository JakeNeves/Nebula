package util;

import flixel.FlxG;
import flixel.FlxSprite;

using StringTools;

class Accomplishments
{
	public static var accompList:Array<Dynamic> = [
		["Playing God In-Game...", "Start or Continue a Run while in Debug Mode", true],
		["Getting Down and Bloody!", "Complete Nebula on Extreme Mode", true],
		["Get Good Retard!", "Complete the Tutorial on Easy Mode", true],
		["Ripped and Torn", "Die on Extreme Mode", true],
		["*whack* You're Going to Nevada", "Kill an Enemy with a Stop Sign", true]
	];

	public static var accompCompleted:Array<Dynamic> = [
		['start_in_debug_mode', false],
		['complete_extreme_mode', false],
		['complete_tutorial_easy_mode', false],
		['die_on_extreme_mode', false],
		['kill_enemy_with_stop_sign', false],
	];

	public static function completeAccomplishment(accomplishmentID:Int):Void
	{
		trace('Accomplishment Complete - ' + accompList[accomplishmentID][0]);
		accompCompleted[accomplishmentID][1] = true;
		FlxG.sound.play(Asset.completedAccomplishment__wav, 0.5);
	}
}

class AttachedAccomplishment extends FlxSprite
{
	public var spriteTracker:FlxSprite;
}
