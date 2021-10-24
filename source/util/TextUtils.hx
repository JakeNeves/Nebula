package util;

import lime.utils.Assets;

using StringTools;

class TextUtils
{
	public static var difficulty:Array<String> = ['easy', 'medium', 'hard', 'insane', 'extreme'];

	public static function difficultyFromNum(difficultyNum:Int):String
	{
		return difficulty[difficultyNum];
	}

	public static function getSplashesFile(path:String):Array<String>
	{
		var splashList:Array<String> = Assets.getText(path).trim().split('\n');

		for (i in 0...splashList.length)
		{
			splashList[i] = splashList[i].trim();
		}

		return splashList;
	}

	public static function getSplashesStringFile(path:String):Array<String>
	{
		var splashList:Array<String> = path.trim().split('\n');

		for (i in 0...splashList.length)
		{
			splashList[i] = splashList[i].trim();
		}

		return splashList;
	}

	public static function splashNumArray(max:Int, ?min = 0):Array<Int>
	{
		var splashNumArray:Array<Int> = [];
		for (i in min...max)
		{
			splashNumArray.push(i);
		}
		return splashNumArray;
	}
}
