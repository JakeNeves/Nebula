package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import flixel.util.FlxTimer;
import ui.NebulaGeneralState;

using StringTools;

#if cpp
import sys.FileSystem;
import sys.io.File;
#end

class Cache extends NebulaGeneralState
{
	public static var save:FlxSave;

	var toBeLoaded = 0;
	var loaded = 0;

	var hasLoaded = false;

	var text:FlxText;

	public static var bitmapData:Map<String, FlxGraphic>;

	override function create()
	{
		FlxG.save.bind('nebula', 'tetrasoft');

		super.create();
	}
}
