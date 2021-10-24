package;

import flixel.FlxG;
import flixel.graphics.FlxGraphic;
import flixel.text.FlxText;

using StringTools;

#if cpp
import sys.FileSystem;
import sys.io.File;
#end

class Cache
{
	var toBeLoaded = 0;
	var loaded = 0;

	var hasLoaded = false;

	var text:FlxText;

	public static var bitmapData:Map<String, FlxGraphic>;

	function create()
	{
		FlxG.save.bind('nebula', 'tetrasoft');
	}
}
