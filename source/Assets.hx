package;

import flixel.FlxG;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import openfl.utils.AssetType;

@:build(flixel.system.FlxAssets.buildFileReferences("assets", true))
class Assets
{
	static var currentArea:String;

	inline static public function getFont(key:String)
	{
		return 'assets/fonts/$key';
	}

	inline static public function getCharacter(key:String)
	{
		return 'assets/images/player/$key';
	}

	inline static public function getCharacterList() {}

	inline static public function getPath(file:String, type:AssetType, lib:Null<String>)
	{
		return getPreloadPath(file);
	}

	inline static public function file(file:String, ?lib:String, ?type:AssetType = TEXT)
	{
		return getPath(file, type, lib);
	}

	inline static public function getPreloadPath(file:String)
	{
		return 'assets/$file';
	}

	inline static public function image(key:String, ?lib:String)
	{
		return getPath('images/$key.png', IMAGE, lib);
	}

	inline static public function getAnimatedImageAtlasXML(key:String, ?lib:String, ?isImageAtlas:Bool = false)
	{
		var useCacheXML = FlxG.save.data.cacheImages;
		#if !cpp
		useCacheXML = false;
		#end
		if (isImageAtlas)
			if (useCacheXML)
				#if cpp
				return FlxAtlasFrames.fromSparrow(imageCached(key), file('images/$key.xml', lib));
				#else
				return null;
				#end
			else
				return FlxAtlasFrames.fromSparrow(image('$key', lib), file('images/$key.xml', lib));
		return FlxAtlasFrames.fromSparrow(image(key, lib), file('images/$key.xml', lib));
	}

	#if cpp
	inline static public function imageCached(key:String):FlxGraphic
	{
		var data = Cache.bitmapData.get(key);
		trace('searching for ${key} - ${data.bitmap}...');
		return data;
	}
	#end
}
