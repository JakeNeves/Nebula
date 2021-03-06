package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	var save:FlxSave = new FlxSave();

	public function new()
	{
		#if fesktop
		if (save.data.fullscreen != null)
		{
			startFullscreen = save.data.fullscreen;
		}
		#end

		#if debug
		FlxG.debugger.drawDebug;
		#end

		super();
		addChild(new FlxGame(800, 600, TitleState, 1, 60, 60, false));

		// if (save.data.volume != null)
		// {
		//	FlxG.sound.volume = save.data.volume;
		// }
		// save.close();
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
