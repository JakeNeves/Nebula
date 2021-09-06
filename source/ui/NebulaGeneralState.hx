package ui;

import flixel.FlxBasic;
import flixel.FlxG;
import flixel.addons.ui.FlxUIState;
import flixel.util.FlxColor;
import openfl.Lib;
import util.TimeScructureUtils;

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
}
