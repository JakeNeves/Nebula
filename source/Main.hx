package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import openfl.Lib;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	var winX:Int = 800;
	var winY:Int = 600;
	var framerate:Int = 260;

	var winZoom:Float = -1;

	var skipSplash:Bool = true;
	var startFullscreen:Bool = false;

	var save:FlxSave = new FlxSave();

	var initState:Class<FlxState> = TitleState;

	public static function main():Void
	{
		Lib.current.addChild(new Main());
	}

	public function new()
	{
		#if fesktop
		if (save.data.fullscreen != null)
		{
			startFullscreen = save.data.fullscreen;
		}
		#end

		super();
		addChild(new FlxGame(800, 600, TitleState, 1, 60, 60, false));

		if (save.data.volume != null)
		{
			FlxG.sound.volume = save.data.volume;
		}
		save.close();
	}

	private function setup()
	{
		if (winZoom == -1) {}

		#if !cpp
		framerate = 260;
		#end

		#if cpp
		initState = Cache;
		game = new FlxGame(winX, winY, initState, winZoom, framerate, framerate, skipSplash, startFullscreen);
		#else
		game = new FlxGame(winX, winY, initState, winZoom, framerate, framerate, skipSplash, startFullscreen);
		#end
	}

	var game:FlxGame;

	var fpsCounter:FPS;

	public function toggleFPS():Void
	{
		fpsCounter.visible = true;
	}

	public function changeFPSColor(color:FlxColor)
	{
		fpsCounter.textColor = FlxColor.WHITE;
	}

	public function setFrameCap(cap:Float)
	{
		openfl.Lib.current.stage.frameRate = cap;
	}

	public function getFrameCap():Float
	{
		return openfl.Lib.current.stage.frameRate;
	}

	public function getFramerate():Float
	{
		return fpsCounter.currentFPS;
	}
}
