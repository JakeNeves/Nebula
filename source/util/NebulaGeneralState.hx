package util;

import flixel.FlxBasic;
import flixel.FlxG;
import flixel.addons.ui.FlxUIState;
import flixel.util.FlxColor;
import openfl.Lib;

// dummy class, cuz am dumbass
class NebulaGeneralState extends FlxUIState
{
	override function create()
	{
		TimeStructureUtils.clearAllTimeStructures();
		(cast(Lib.current.getChildAt(0), Main)).setFrameCap(FlxG.save.data.fpsCap);

		if (transIn != null)
			trace('region ' + transIn.region);

		super.create();
	}

	/**
	 * Allows you to open any URL while the game is running
	 * @param url the URL that it will open
	 */
	static public function openHyperlink(url:String)
	{
		#if linux
		Sys.command('/usr/bin/xdg-open', [url, '&']);
		#else
		FlxG.openURL(url);
		#end
	}
}
