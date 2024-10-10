package;

import flixel.FlxG;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import openfl.utils.AssetType;

// @:build(flixel.system.FlxAssets.buildFileReferences("assets", true))
class Asset
{
	static var currentArea:String;

	/*
	 * Gets any specific font in the game's files
	 * @param key The name of the font file
	 */
	inline static public function getFont(key:String)
	{
		return 'assets/fonts/$key';
	}

	inline static public function getTextFile(key:String, ?lib:String)
	{
		return getPath('$key.txt', TEXT, lib);
	}

	/**
	 * Gets any specific JSON data file in the
	 * game's data folder
	 * @param key The JSON filename
	 */
	inline static public function getJSONFile(key:String)
	{
		return 'assets/data/$key.json';
	}

	inline static public function getDataFile(key:String)
	{
		return 'assets/data/$key';
	}

	/**
	 * Gets any specific character in the 'player' folder
	 * in the game's files
	 * @param key The file name for the character
	 */
	inline static public function getCharacter(key:String)
	{
		return 'assets/images/player/$key.png';
	}

	inline static public function getSound(key:String)
	{
		return 'assets/sounds/$key.wav';
	}

	inline static public function getMusic(key:String)
	{
		return 'assets/music/$key.ogg';
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

	/**
	 * Allows you to get a specific image under any file name
	 * @param key The image's file name
	 * @param lib The library the image is located
	 */
	inline static public function image(key:String, ?lib:String)
	{
		return getPath('images/$key.png', IMAGE, lib);
	}

	/**
	 * Allows you to get any spritesheet made in Adobe Animate or similar
	 * @param key the file name of the image
	 * @param lib the library the image is located
	 * @param isImageAtlas determines if it is an multi-image atlas
	 */
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
