package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.util.FlxColor;
import flixel.util.FlxSave;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	var framerate:Int = 250;

	public function new()
	{
		// var startFullscreen:Bool = false;
		var save:FlxSave = new FlxSave();

		// #if desktop
		// if (save.data.fullscreen != null)
		// {
		//	startFullscreen = save.data.fullscreen;
		// }
		// #end

		// framerate = 60;

		// fpsCounter = new FPS(10, 3, 0xFFFFFF);
		// addChild(fpsCounter);
		// toggleFPS(FlxG.save.data.fps);

		super();
		addChild(new FlxGame(800, 600, MenuState, 1, 60, 60, false));
	}

	// var fpsCounter:FPS;
	// public function toggleFPS(fpsEnabled:Bool):Void
	// {
	//	fpsCounter.visible = fpsEnabled;
	// }
	// public function setFPSCap(cap:Float)
	// {
	//	openfl.Lib.current.stage.frameRate = cap;
	// }
	// public function getFPSCap():Float
	// {
	//	return openfl.Lib.current.stage.frameRate;
	// }
	// public function changeFPSColor(color:FlxColor)
	// {
	//	fpsCounter.textColor = color;
	// }
	// public function getFPS():Float
	// {
	//	return fpsCounter.currentFPS;
	// }
}
